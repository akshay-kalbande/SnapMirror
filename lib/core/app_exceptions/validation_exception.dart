import 'package:freezed_annotation/freezed_annotation.dart';
import '../failures/failure.dart';
import '../failures/validation_failure.dart';
import 'exception.dart';

part 'validation_exception.freezed.dart';

@freezed
sealed class ValidationException
    with _$ValidationException
    implements Exceptions {
  const ValidationException._();

  const factory ValidationException.empty({required String field}) =
      EmptyException;

  const factory ValidationException.invalid({required String reason}) =
      InvalidException;

  const factory ValidationException.tooShort({
    required String field,
    required int min,
  }) = TooShortException;

  const factory ValidationException.tooLong({
    required String field,
    required int max,
  }) = TooLongException;

  const factory ValidationException.outOfRange({
    required String field,
    required num min,
    required num max,
  }) = OutOfRangeFailure;

  @override
  Failure get failure => when(
    empty: (field) => ValidationFailure.empty(field: field),
    invalid: (reason) => ValidationFailure.invalid(reason: reason),
    tooShort: (field, min) =>
        ValidationFailure.tooShort(field: field, min: min),
    tooLong: (field, max) => ValidationFailure.tooLong(field: field, max: max),
    outOfRange: (field, min, max) =>
        ValidationFailure.outOfRange(field: field, min: min, max: max),
  );

  @override
  String get message => failure.message;
}
