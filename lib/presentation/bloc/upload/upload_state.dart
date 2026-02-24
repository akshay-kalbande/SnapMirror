part of 'upload_bloc.dart';

@freezed
sealed class UploadState with _$UploadState {
  const UploadState._();
  const factory UploadState({
    @Default(true) bool canUpload,
    PostUploadResultEntity? postUploadResult,
  }) = _UploadState;
}
