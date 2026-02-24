import 'package:formz/formz.dart';

import '../../core/failures/validation_failure.dart';
import '../../domain/validators.dart';

class EmailInput extends FormzInput<String, ValidationFailure> {
  const EmailInput.pure() : super.pure('');
  const EmailInput.dirty([super.value = '']) : super.dirty();

  @override
  ValidationFailure? validator(String value) {
    if (value.isEmpty) return ValidationFailure.empty(field: 'Email');
    if (!Validators.isValidEmail(value)) {
      return ValidationFailure.invalid(reason: 'Invalid email address');
    }
    return null;
  }
}
