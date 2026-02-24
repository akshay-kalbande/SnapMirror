import 'package:cloud_firestore/cloud_firestore.dart';
import '../../../core/app_exceptions/exception.dart';
import '../../models/comment_model.dart';
import '../../models/page_request_model.dart';
import '../../models/page_result_model.dart';
import 'fetch_page_remote_data_source.dart';

abstract class CommentsRemoteDataSource {
  Future<PageResultModel<CommentModel>> fetchComments(
    PageRequestModel pageRequest,
  );
  Future<CommentModel> fetchComment({
    required String commentID,
    required String postID,
  });
  Future<CommentModel> updateComment(CommentModel comment);

  Future<CommentModel> addComment(CommentModel comment);
}

class CommentsRemoteDataSourceImpl implements CommentsRemoteDataSource {
  final FirebaseFirestore firestore;
  final FetchPageRemoteDataSource fetchPageRemoteDataSource;
  final String _collection = 'comments';

  CommentsRemoteDataSourceImpl({
    required this.firestore,
    required this.fetchPageRemoteDataSource,
  });
  @override
  Future<PageResultModel<CommentModel>> fetchComments(
    PageRequestModel pageRequest,
  ) async {
    try {
      return await fetchPageRemoteDataSource.fetchNextPage(
        firestore
            .collection('posts')
            .doc(pageRequest.isEqualToFieldMap['postId'])
            .collection('comments'),
        pageRequest,
        (json) => CommentModel.fromJson(json),
      );
    } catch (e) {
      throw ServerException(message: e.toString());
    }
  }

  @override
  Future<CommentModel> fetchComment({
    required String commentID,
    required String postID,
  }) async {
    try {
      final res = await firestore
          .collection('posts')
          .doc(postID)
          .collection(_collection)
          .doc(commentID)
          .get();
      if (!res.exists) throw 'Comment does\'nt exists!';
      return CommentModel.fromJson(res.data()!);
    } catch (e) {
      throw ServerException(message: e.toString());
    }
  }

  @override
  Future<CommentModel> updateComment(CommentModel comment) async {
    try {
      await firestore
          .collection('posts')
          .doc(comment.postId)
          .collection(_collection)
          .doc(comment.commentId)
          .update(comment.toJson());
      return comment;
    } catch (e) {
      throw ServerException(message: e.toString());
    }
  }

  @override
  Future<CommentModel> addComment(CommentModel comment) async {
    try {
      final res = await firestore
          .collection('posts')
          .doc(comment.postId)
          .collection(_collection)
          .doc(comment.commentId)
          .set(comment.toJson());
      final res2 = await firestore
          .collection('posts')
          .doc(comment.postId)
          .update({
            'comments': FieldValue.arrayUnion([comment.commentId]),
          });
      return comment;
    } catch (e) {
      throw ServerException(message: e.toString());
    }
  }
}
