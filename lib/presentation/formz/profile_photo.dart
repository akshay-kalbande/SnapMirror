import 'package:formz/formz.dart';

import '../../core/failures/validation_failure.dart';
import '../../core/utils/app_file.dart';

class ProfilePhoto extends FormzInput<AppFile?, ValidationFailure> {
  const ProfilePhoto.pure() : super.pure(null);
  const ProfilePhoto.dirty([super.value]) : super.dirty();

  @override
  ValidationFailure? validator(AppFile? value) {
    if (value == null || value.path.isEmpty) {
      return ValidationFailure.invalid(reason: 'No file selected');
    }

    final allowedExtensions = ['jpg', 'jpeg', 'png'];
    final fileExtension = value.path.split('.').last.toLowerCase();
    if (!allowedExtensions.contains(fileExtension)) {
      return ValidationFailure.invalid(
        reason: 'Invalid file type. Allowed types are: jpg, jpeg, png.',
      );
    }

    final maxSizeInBytes = 5 * 1024 * 1024;
    if (value.size > maxSizeInBytes) {
      return ValidationFailure.invalid(
        reason: 'File size must be less than 5MB',
      );
    }

    return null;
  }
}
