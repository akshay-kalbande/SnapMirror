import 'package:freezed_annotation/freezed_annotation.dart';
import '../app_strings.dart';
import 'failure.dart';

part 'validation_failure.freezed.dart';

@freezed
sealed class ValidationFailure with _$ValidationFailure implements Failure {
  const ValidationFailure._();

  const factory ValidationFailure.empty({required String field}) = EmptyFailure;

  const factory ValidationFailure.invalid({required String reason}) =
      InvalidFailure;

  const factory ValidationFailure.tooShort({
    required String field,
    required int min,
  }) = TooShortFailure;

  const factory ValidationFailure.tooLong({
    required String field,
    required int max,
  }) = TooLongFailure;

  const factory ValidationFailure.outOfRange({
    required String field,
    required num min,
    required num max,
  }) = OutOfRangeFailure;

  @override
  String get message => when(
    empty: (field) => '$field ${AppStrings.canNotBeEmpty}',
    invalid: (reason) => reason,
    tooShort: (field, min) =>
        '$field ${AppStrings.mustBeAtLeast} $min ${AppStrings.characters}',
    tooLong: (field, max) =>
        '$field ${AppStrings.mustBeAtMost} $max ${AppStrings.characters}',
    outOfRange: (field, min, max) =>
        '$field ${AppStrings.mustBeBetween} $min & $max',
  );
}
