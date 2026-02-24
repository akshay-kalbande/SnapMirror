import 'dart:async';

import 'package:dartz/dartz.dart';

import '../../core/failures/failure.dart';
import '../../core/usecases/usecase.dart';
import '../entities/post_entity.dart';
import '../repositories/post_repository.dart';

class GetPostFeedSubscriptionUsecase
    implements Usecase<Stream<PostEntity>, String> {
  final PostRepository _feedRepository;

  GetPostFeedSubscriptionUsecase(this._feedRepository);

  @override
  Future<Either<Failure, Stream<PostEntity>>> call(String? params) async {
    return Right(
      _feedRepository.postStream
          .where((event) => event.postId == params!)
          .map((event) => event),
    );
  }
}
