import 'package:dartz/dartz.dart';

import '../../core/failures/failure.dart';
import '../../core/usecases/usecase.dart';
import '../entities/page_request_entity.dart';
import '../entities/page_result_entity.dart';
import '../repositories/post_repository.dart';

class GetFollowingFeedUsecase
    implements Usecase<PageResultEntity<String>, PageRequestEntity> {
  final PostRepository _feedRepository;

  const GetFollowingFeedUsecase(this._feedRepository);

  @override
  Future<Either<Failure, PageResultEntity<String>>> call(
    PageRequestEntity params,
  ) async {
    return _feedRepository.fetchFollowingFeed(params);
  }
}
