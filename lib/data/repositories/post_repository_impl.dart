import 'dart:async';
import 'dart:typed_data';
import 'package:dartz/dartz.dart';
import 'package:uuid/uuid.dart';

import '../../core/app_service.dart';
import '../../core/failures/failure.dart';
import '../../domain/entities/file_upload_result_entity.dart';
import '../../domain/entities/page_request_entity.dart';
import '../../domain/entities/page_result_entity.dart';
import '../../domain/entities/post_entity.dart';
import '../../domain/repositories/post_repository.dart';
import '../data_sources/remote_data_sources/file_remote_data_source.dart';
import '../data_sources/remote_data_sources/post_remote_data_source.dart';
import '../models/file_upload_result_model.dart';
import '../models/page_request_model.dart';
import '../models/post_model.dart';

class PostRepositoryImpl implements PostRepository {
  final PostRemoteDataSource postRemoteDataSource;
  final FileRemoteDataSource fileRemoteDataSource;
  PostRepositoryImpl({
    required this.postRemoteDataSource,
    required this.fileRemoteDataSource,
  });

  final Map<String, PostEntity> _cache = {};

  final _controller = StreamController<PostEntity>.broadcast();
  @override
  Stream<PostEntity> get postStream => _controller.stream;

  @override
  Future<Either<Failure, PostEntity>> getPost(String postID) async {
    try {
      final cachedPost = _getCachedPost(postID);
      if (cachedPost != null) {
        return Right(cachedPost);
      }

      final post = (await postRemoteDataSource.fetchPost(postID)).entity;

      _updateCache(post);
      return Right(post);
    } catch (e) {
      return Left(ServerFailure('Failed to load post: $e'));
    }
  }

  @override
  Future<Either<Failure, PageResultEntity<String>>> fetchFollowingFeed(
    PageRequestEntity pageRequest,
  ) async {
    try {
      final feedRes = await postRemoteDataSource.fetchFollowingFeed(
        PageRequestModel.fromEntity(pageRequest),
      );
      // List<PostEntity> posts = [];
      final res = feedRes.toEntity<String>(
        itemMapper: (id) {
          // final post = model.entity;
          // posts.add(post);
          return id;
        },
      );
      print('Fetched Posts Repo: ${res.items}');
      // _updateAll(posts);
      return Right(res);
    } catch (e) {
      return Left(ServerFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, PageResultEntity<PostEntity>>> fetchExploreFeed(
    PageRequestEntity pageRequest,
  ) async {
    try {
      final feedRes = await postRemoteDataSource.fetchExploreFeed(
        PageRequestModel.fromEntity(pageRequest),
      );
      List<PostEntity> posts = [];
      final res = feedRes.toEntity<PostEntity?>(
        itemMapper: (model) {
          final post = model.entity;
          posts.add(post);
          if (post.uid == AppService.instance.user.uid) return null;
          return post;
        },
      );
      _updateAll(posts);
      return Right(
        PageResultEntity(
          items: res.items.nonNulls.toList(),
          nextPageToken: res.nextPageToken,
          isLastPage: res.isLastPage,
          totalItemCount: res.totalItemCount,
        ),
      );
    } catch (e) {
      return Left(ServerFailure(e.toString()));
    }
  }

  PostEntity? _getCachedPost(String postID) => _cache[postID];

  void _updateAll(List<PostEntity> posts) async {
    for (final post in posts) {
      _cache[post.postId] = post;
      _controller.add(post);
    }
  }

  void _updateCache(PostEntity post) {
    _cache[post.postId] = post;
  }

  @override
  Future<Either<Failure, void>> updatePost(PostEntity post) async {
    try {
      await postRemoteDataSource.updatePost(PostModel.fromEntity(post));
      _updateCache(post);
      _controller.add(post);
      return Right(null);
    } catch (e) {
      return Left(ServerFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, PageResultEntity<PostEntity>>> fetchUserPosts(
    PageRequestEntity pageRequest,
  ) async {
    try {
      final postRes = await postRemoteDataSource.fetchUserPosts(
        PageRequestModel.fromEntity(pageRequest),
      );
      return Right(postRes.toEntity(itemMapper: (model) => model.entity));
    } catch (e) {
      return Left(ServerFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, PostEntity>> uploadPost(PostEntity post) async {
    try {
      return Right(
        (await postRemoteDataSource.uploadPost(
          PostModel.fromEntity(post),
        )).entity,
      );
    } catch (e) {
      return Left(ServerFailure(e.toString()));
    }
  }

  @override
  Stream<Either<Failure, FileUploadResultEntity>> uploadPostFile(
    Uint8List file,
    final String userID,
  ) {
    final fileID = Uuid().v1();
    return fileRemoteDataSource
        .uploadFile(file, ['posts', userID, fileID])
        .map(
          (event) => event.map(
            started: (value) => Right(value.entity!),
            progress: (value) => Right(value.entity!),
            success: (value) => Right(value.entity!),
            error: (value) => Left(ServerFailure(value.error)),
          ),
        );
  }
}
