import 'package:cloud_firestore/cloud_firestore.dart';

import '../../../core/app_exceptions/exception.dart';
import '../../models/page_request_model.dart';
import '../../models/page_result_model.dart';
import '../../models/post_model.dart';
import 'fetch_page_remote_data_source.dart';

abstract class PostRemoteDataSource {
  Future<PostModel> fetchPost(String postID);
  Future<void> updatePost(final PostModel post);
  Future<PageResultModel<PostModel>> fetchUserPosts(
    final PageRequestModel pageRequest,
  );
  Future<PageResultModel<String>> fetchFollowingFeed(
    final PageRequestModel pageRequest,
  );
  Future<PageResultModel<PostModel>> fetchExploreFeed(
    final PageRequestModel pageRequest,
  );
  Future<PostModel> uploadPost(final PostModel post);
}

class PostRemoteDataSourceImpl implements PostRemoteDataSource {
  final FirebaseFirestore firestore;
  final FetchPageRemoteDataSource fetchPageRemoteDataSource;
  final String _collection = 'posts';

  PostRemoteDataSourceImpl({
    required this.firestore,
    required this.fetchPageRemoteDataSource,
  });

  @override
  Future<PostModel> fetchPost(String postID) async {
    try {
      final res = await firestore.collection(_collection).doc(postID).get();
      if (res.exists) return PostModel.fromJson(res.data()!);
      throw 'Post does\'nt exists';
    } catch (e) {
      throw ServerException(message: e.toString());
    }
  }

  @override
  Future<void> updatePost(final PostModel post) async {
    try {
      await firestore
          .collection(_collection)
          .doc(post.postId)
          .update(post.toJson());
    } catch (e) {
      throw ServerException(message: e.toString());
    }
  }

  @override
  Future<PageResultModel<PostModel>> fetchUserPosts(
    final PageRequestModel pageRequest,
  ) async {
    return fetchPageRemoteDataSource.fetchNextPage(
      firestore.collection(_collection),
      pageRequest,
      (json) => PostModel.fromJson(json),
    );
  }

  @override
  Future<PostModel> uploadPost(PostModel post) async {
    try {
      await firestore
          .collection(_collection)
          .doc(post.postId)
          .set(post.toJson());
      return post;
    } catch (e) {
      throw ServerException(message: e.toString());
    }
  }

  @override
  Future<PageResultModel<String>> fetchFollowingFeed(
    PageRequestModel pageRequest,
  ) async {
    return fetchPageRemoteDataSource.fetchNextPage(
      firestore
          .collection('users')
          .doc(pageRequest.uid)
          .collection(_collection),
      pageRequest,
      (json) => json['id'],
    );
  }

  @override
  Future<PageResultModel<PostModel>> fetchExploreFeed(
    PageRequestModel pageRequest,
  ) async {
    return fetchPageRemoteDataSource.fetchNextPage(
      firestore.collection(_collection),
      pageRequest,
      (json) => PostModel.fromJson(json),
    );
  }
}
