import 'package:freezed_annotation/freezed_annotation.dart';

part 'file_upload_result_entity.freezed.dart';

@freezed
sealed class FileUploadResultEntity with _$FileUploadResultEntity {
  const FileUploadResultEntity._();
  const factory FileUploadResultEntity.started() = _Started;
  const factory FileUploadResultEntity.progress(final double progress) =
      _Progress;
  const factory FileUploadResultEntity.success(final String path) = _Success;
}
