import 'package:formz/formz.dart';

import '../../core/app_strings.dart';
import '../../core/failures/validation_failure.dart';
import '../../domain/validators.dart';

class PasswordInput extends FormzInput<String, ValidationFailure> {
  const PasswordInput.pure() : super.pure('');
  const PasswordInput.dirty([super.value = '']) : super.dirty();

  @override
  ValidationFailure? validator(String value) {
    if (value.isEmpty) return const ValidationFailure.empty(field: 'Password');
    if (!Validators.isValidPassword(value)) {
      return const ValidationFailure.invalid(
        reason: AppStrings.invalidPassText,
      );
    }
    return null;
  }
}
