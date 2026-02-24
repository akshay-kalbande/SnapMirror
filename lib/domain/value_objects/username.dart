import 'package:equatable/equatable.dart';

import '../../core/app_exceptions/validation_exception.dart';
import '../validators.dart';

class Username extends Equatable {
  final String value;
  const Username._(this.value);

  factory Username(String input) {
    if (input.isEmpty) throw ValidationException.empty(field: 'Username');
    if (!Validators.isValidUsername(input)) {
      throw ValidationException.invalid(reason: 'Invalid username');
    }
    return Username._(input);
  }

  @override
  List<Object?> get props => [value];
}
