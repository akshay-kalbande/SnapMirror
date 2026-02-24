import 'dart:async';

import 'package:dartz/dartz.dart';

import '../../core/failures/failure.dart';
import '../../domain/entities/comment_entity.dart';
import '../../domain/entities/page_request_entity.dart';
import '../../domain/entities/page_result_entity.dart';
import '../../domain/repositories/comments_repository.dart';
import '../data_sources/remote_data_sources/comments_remote_data_source.dart';
import '../models/comment_model.dart';
import '../models/page_request_model.dart';
import '../models/page_result_model.dart';

class CommentsRepositoryImpl implements CommentsRepository {
  final CommentsRemoteDataSource dataSource;

  final _controller = StreamController<CommentEntity>.broadcast();

  @override
  Stream<CommentEntity> get comments => _controller.stream;

  final Map<String, Map<String, CommentEntity>> _cache =
      {}; //postID, commentID, comment

  CommentsRepositoryImpl(this.dataSource);

  @override
  Future<Either<Failure, PageResultEntity<String>>> getComments(
    final PageRequestEntity pageRequest,
  ) async {
    try {
      final res = await dataSource.fetchComments(
        PageRequestModel.fromEntity(pageRequest),
      );
      return Right(_saveInCacheAndGetEntity(res));
    } catch (e) {
      return Left(ServerFailure(e.toString()));
    }
  }

  PageResultEntity<String> _saveInCacheAndGetEntity(
    final PageResultModel<CommentModel> pageResult,
  ) {
    return pageResult.toEntity(
      itemMapper: (data) {
        final comment = data.entity;
        _saveInCache(comment);
        return comment.commentId;
      },
    );
  }

  CommentEntity? _getFromCache(final String postID, final String commentID) {
    return _cache[postID]?[commentID];
  }

  void _saveInCache(final CommentEntity comment) {
    if (!_cache.containsKey(comment.postId)) {
      _cache[comment.postId] = {comment.commentId: comment};
    } else {
      _cache[comment.postId]![comment.commentId] = comment;
    }
  }

  @override
  Future<Either<Failure, CommentEntity>> getComment({
    required String commentID,
    required String postID,
  }) async {
    try {
      final cached = _getFromCache(postID, commentID);
      if (cached != null) return Right(cached);
      final comment = (await dataSource.fetchComment(
        commentID: commentID,
        postID: postID,
      )).entity;
      _saveInCache(comment);
      return Right(comment);
    } catch (e) {
      return Left(ServerFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, CommentEntity>> updateComment(
    CommentEntity comment,
  ) async {
    try {
      final res = await dataSource.updateComment(
        CommentModel.fromEntity(comment),
      );
      _controller.add(res.entity);
      return Right(res.entity);
    } catch (e) {
      return Left(ServerFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, CommentEntity>> addComment(
    CommentEntity comment,
  ) async {
    try {
      return Right(
        (await dataSource.addComment(CommentModel.fromEntity(comment))).entity,
      );
    } catch (e) {
      return Left(ServerFailure(e.toString()));
    }
  }
}
