import 'package:equatable/equatable.dart';

import '../../core/app_exceptions/validation_exception.dart';
import '../../core/app_strings.dart';
import '../validators.dart';

class Password extends Equatable {
  final String value;
  const Password._(this.value);

  factory Password(String input) {
    if (input.isEmpty) throw ValidationException.empty(field: 'Password');
    if (!Validators.isValidPassword(input)) {
      throw ValidationException.invalid(reason: AppStrings.invalidPassText);
    }
    return Password._(input);
  }

  @override
  List<Object?> get props => [value];
}
