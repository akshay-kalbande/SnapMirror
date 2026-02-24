import 'package:equatable/equatable.dart';
import '../../core/app_exceptions/validation_exception.dart';
import '../validators.dart';

class Bio extends Equatable {
  final String value;

  const Bio._(this.value);

  factory Bio(String input) {
    if (input.isEmpty) {
      throw ValidationException.empty(field: 'Bio');
    }

    if (!Validators.hasMaxLength(input, 150)) {
      throw ValidationException.tooLong(field: 'Bio', max: 150);
    }

    return Bio._(input);
  }

  @override
  List<Object?> get props => [value];
}
