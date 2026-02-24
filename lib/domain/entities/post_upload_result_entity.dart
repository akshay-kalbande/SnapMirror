import 'package:freezed_annotation/freezed_annotation.dart';

import '../../core/failures/failure.dart';
import 'post_entity.dart';

part 'post_upload_result_entity.freezed.dart';

@freezed
sealed class PostUploadResultEntity with _$PostUploadResultEntity {
  const PostUploadResultEntity._();
  const factory PostUploadResultEntity.started() = _Started;
  const factory PostUploadResultEntity.fileUploading(final double progress) =
      _FileUploading;
  const factory PostUploadResultEntity.fileUploaded(final String url) =
      _FileUploaded;
  const factory PostUploadResultEntity.error(final Failure error) = _Error;
  const factory PostUploadResultEntity.uploaded(final PostEntity post) =
      _Uploaded;
}
