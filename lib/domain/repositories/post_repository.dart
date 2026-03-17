import 'dart:typed_data';

import 'package:dartz/dartz.dart';

import '../../core/failures/failure.dart';
import '../entities/file_upload_result_entity.dart';
import '../entities/page_request_entity.dart';
import '../entities/page_result_entity.dart';
import '../entities/post_entity.dart';
import '../entities/user_entity.dart';

abstract class PostRepository {
  Stream<PostEntity> get postStream;

  Future<Either<Failure, PostEntity>> getPost(String postID);

  Future<Either<Failure, void>> updatePost(PostEntity post);
  Future<Either<Failure, PostEntity>> uploadPost(
    PostEntity post,
    final UserEntity user,
  );

  Future<Either<Failure, PageResultEntity<PostEntity>>> fetchUserPosts(
    final PageRequestEntity pageRequest,
  );
  Future<Either<Failure, PageResultEntity<String>>> fetchFollowingFeed(
    final PageRequestEntity pageRequest,
  );
  Future<Either<Failure, PageResultEntity<PostEntity>>> fetchExploreFeed(
    final PageRequestEntity pageRequest,
  );

  Stream<Either<Failure, FileUploadResultEntity>> uploadPostFile(
    Uint8List file,
    String userID,
  );
}
