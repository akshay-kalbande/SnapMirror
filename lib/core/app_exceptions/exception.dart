import 'package:freezed_annotation/freezed_annotation.dart';
import '../failures/failure.dart';

part 'exception.freezed.dart';

abstract class Exceptions implements Exception {
  Failure get failure;
  String get message;
  @override
  String toString() => failure.message;
}

@freezed
sealed class AppException with _$AppException implements Exceptions {
  const AppException._();
  const factory AppException.network({required final String message}) =
      NetworkException;
  const factory AppException.server({required final String message}) =
      ServerException;
  const factory AppException.cache({required final String message}) =
      CacheException;
  const factory AppException.notification({required final String message}) =
      NotificationException;
  const factory AppException.other({required final String message}) =
      OtherException;

  @override
  Failure get failure => when(
    network: (message) => AppFailure.network(message),
    server: (message) => AppFailure.server(message),
    cache: (message) => AppFailure.cache(message),
    notification: (message) => AppFailure.notification(message),
    other: (message) => AppFailure.other(message),
  );

  @override
  String get message => failure.message;
  @override
  String toString() => message;
}

extension ExceptionExt on Exception {
  Failure get failure => this is Exceptions
      ? (this as Exceptions).failure
      : OtherFailure(toString());
}
