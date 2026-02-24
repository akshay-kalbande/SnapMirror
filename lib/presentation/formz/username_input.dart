import 'package:formz/formz.dart';
import '../../core/failures/validation_failure.dart';
import '../../domain/validators.dart';

class UsernameInput extends FormzInput<String, ValidationFailure> {
  const UsernameInput.pure() : super.pure('');
  const UsernameInput.dirty([super.value = '']) : super.dirty();

  @override
  ValidationFailure? validator(String value) {
    if (value.isEmpty) return const ValidationFailure.empty(field: 'Username');
    if (!Validators.isValidUsername(value)) {
      return const ValidationFailure.invalid(
        reason: 'Username must be 3-20 characters, letters/numbers/underscores',
      );
    }
    return null;
  }
}
