import 'dart:async';
import 'dart:typed_data';
import 'package:equatable/equatable.dart';
import 'package:uuid/uuid.dart';

import '../../core/app_service.dart';
import '../../core/usecases/usecase.dart';
import '../entities/file_upload_result_entity.dart';
import '../entities/post_entity.dart';
import '../entities/post_upload_result_entity.dart';
import '../entities/user_entity.dart';
import '../repositories/post_repository.dart';

class UploadPostUsecase
    implements StreamUsecase<PostUploadResultEntity, UploadPostParams> {
  final PostRepository repository;

  UploadPostUsecase(this.repository);

  @override
  Stream<PostUploadResultEntity> call(UploadPostParams params) async* {
    final postID = Uuid().v1();
    await Future.delayed(const Duration(milliseconds: 500));

    final uploadRes = repository.uploadPostFile(
      params.file,
      AppService.instance.user.uid,
    );
    await for (final res in uploadRes) {
      final PostUploadResultEntity result = await res.fold(
        (failure) async => PostUploadResultEntity.error(failure),
        (fileResult) async {
          return await fileResult.when(
            started: () => const PostUploadResultEntity.started(),
            progress: (p) => PostUploadResultEntity.fileUploading(p),
            success: (path) async {
              final postRes = await repository.uploadPost(
                params.entity.copyWith(
                  postId: postID,
                  postUrl: path,
                  imageUrl: path,
                ),
                params.user,
              );
              return postRes.fold(
                (l) => PostUploadResultEntity.error(l),
                (r) => PostUploadResultEntity.uploaded(r),
              );
            },
          );
        },
      );

      yield result;
    }
  }
}

class UploadPostParams extends Equatable {
  final Uint8List file;
  final String caption;
  final String uid;
  final String username;
  final String profImageUrl;
  final UserEntity user;

  const UploadPostParams({
    required this.file,
    required this.caption,
    required this.uid,
    required this.username,
    required this.profImageUrl,
    required this.user,
  });
  @override
  List<Object?> get props => [file, caption, uid, username, profImageUrl, user];

  PostEntity get entity => PostEntity(
    caption: caption,
    uid: uid,
    username: username,
    imageUrl: '',
    postId: '',
    profImageUrl: profImageUrl,
    datePublished: DateTime.now(),
    postUrl: '',
    likes: [],
    comments: [],
  );
}
