import 'package:equatable/equatable.dart';

import '../../core/app_exceptions/validation_exception.dart';
import '../validators.dart';

class Email extends Equatable {
  final String value;
  const Email._(this.value);
  factory Email(String value) {
    if (value.isEmpty) throw ValidationException.empty(field: 'Email');
    if (!Validators.isValidEmail(value)) {
      throw ValidationException.invalid(reason: 'Invalid email');
    }
    return Email._(value);
  }

  @override
  List<Object?> get props => [value];
}
