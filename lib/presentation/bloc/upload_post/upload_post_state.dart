part of 'upload_post_bloc.dart';

@freezed
sealed class UploadPostState with _$UploadPostState {
  const UploadPostState._();
  const factory UploadPostState({
    UploadPostParams? post,
    Uint8List? file,
    @Default('') String caption,
    @Default(false) bool isLoading,
    @Default(false) bool pickImage,
    ScreenMessage? notification,
  }) = _UploadPostState;
}
