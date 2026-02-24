part of 'upload_post_bloc.dart';

@freezed
class UploadPostEvent with _$UploadPostEvent {
  const factory UploadPostEvent.postFileSelected(Uint8List file) =
      _PostFileSelected;
  const factory UploadPostEvent.postFileSelectionCancelled() =
      _PostFileSelectionCancelled;
  const factory UploadPostEvent.changePostFile() = _ChangePostFile;
  const factory UploadPostEvent.postSubmitted(final String caption) =
      _PostSubmitted;
}
