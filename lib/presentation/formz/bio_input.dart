import 'package:formz/formz.dart';
import '../../core/failures/validation_failure.dart';
import '../../domain/validators.dart';

class BioInput extends FormzInput<String, ValidationFailure> {
  const BioInput.pure() : super.pure('');
  const BioInput.dirty([super.value = '']) : super.dirty();

  @override
  ValidationFailure? validator(String value) {
    if (value.isEmpty) {
      return const ValidationFailure.empty(field: 'Bio');
    }

    if (!Validators.hasMaxLength(value, 150)) {
      return const ValidationFailure.tooLong(field: 'Bio', max: 150);
    }

    return null;
  }
}
