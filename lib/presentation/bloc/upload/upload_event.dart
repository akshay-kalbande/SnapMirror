part of 'upload_bloc.dart';

@freezed
class UploadEvent with _$UploadEvent {
  const factory UploadEvent.started() = _Started;
  const factory UploadEvent.upload(UploadPostParams post) = _Upload;
}
