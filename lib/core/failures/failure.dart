import 'package:freezed_annotation/freezed_annotation.dart';

part 'failure.freezed.dart';

abstract class Failure {
  String get message;
}

@freezed
sealed class AppFailure with _$AppFailure implements Failure {
  const AppFailure._();
  const factory AppFailure.network(final String message) = NetworkFailure;
  const factory AppFailure.server(final String message) = ServerFailure;
  const factory AppFailure.cache(final String message) = CacheFailure;
  const factory AppFailure.notification(final String message) =
      NotificationFailure;
  const factory AppFailure.other(final String message) = OtherFailure;

  @override
  String get message => when(
    network: (message) => message,
    server: (message) => message,
    cache: (message) => message,
    notification: (message) => message,
    other: (message) => message,
  );

  @override
  String toString() => message;
}
