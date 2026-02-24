import 'dart:async';

import 'package:dartz/dartz.dart';

import '../failures/failure.dart';

abstract class Usecase<T, Params> {
  Future<Either<Failure, T>> call(Params params);
}

abstract class StreamUsecase<T, Params> {
  Stream<T> call(Params params);
}

class NoParams {}
