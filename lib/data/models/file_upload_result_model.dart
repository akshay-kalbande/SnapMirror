import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/entities/file_upload_result_entity.dart';

part 'file_upload_result_model.freezed.dart';

@freezed
sealed class FileUploadResultModel with _$FileUploadResultModel {
  const FileUploadResultModel._();
  const factory FileUploadResultModel.started() = _Started;
  const factory FileUploadResultModel.progress(final double progress) =
      _Progress;
  const factory FileUploadResultModel.success(final String path) = _Success;
  const factory FileUploadResultModel.error(final String error) = _Error;

  FileUploadResultEntity? get entity => mapOrNull(
    started: (value) => FileUploadResultEntity.started(),
    progress: (value) => FileUploadResultEntity.progress(value.progress),
    success: (value) => FileUploadResultEntity.success(value.path),
  );
}
