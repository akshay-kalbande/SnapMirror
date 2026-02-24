import 'package:formz/formz.dart';
import '../../core/failures/validation_failure.dart';
import '../../domain/validators.dart';

class ImageUrlInput extends FormzInput<String, ValidationFailure> {
  const ImageUrlInput.pure() : super.pure('');
  const ImageUrlInput.dirty([super.value = '']) : super.dirty();

  @override
  ValidationFailure? validator(String value) {
    if (value.isEmpty) {
      return const ValidationFailure.empty(field: 'Profile Image');
    }
    if (!Validators.isValidUrl(value)) {
      return const ValidationFailure.invalid(reason: 'Invalid image URL');
    }

    return null;
  }
}
