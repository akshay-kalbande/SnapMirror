import 'package:freezed_annotation/freezed_annotation.dart';

import '../../core/failures/failure.dart';
import 'file_upload_result_entity.dart';
import 'user_entity.dart';

part 'registration_status_entity.freezed.dart';

@freezed
sealed class RegistrationStatusEntity with _$RegistrationStatusEntity {
  const RegistrationStatusEntity._();
  const factory RegistrationStatusEntity.creatingProfile() = _CreatingProfile;
  const factory RegistrationStatusEntity.profileCreated() = _ProfileCreated;
  const factory RegistrationStatusEntity.fileUpload(
    final FileUploadResultEntity fileUpload,
  ) = _FileUpload;
  const factory RegistrationStatusEntity.savedProfile(final UserEntity user) =
      _SavedProfile;
  const factory RegistrationStatusEntity.error(final Failure failure) = _Error;
}
