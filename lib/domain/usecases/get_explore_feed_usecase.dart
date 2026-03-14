import 'package:dartz/dartz.dart';

import '../../core/failures/failure.dart';
import '../../core/usecases/usecase.dart';
import '../entities/page_request_entity.dart';
import '../entities/page_result_entity.dart';
import '../entities/post_entity.dart';
import '../repositories/post_repository.dart';

class GetExploreFeedUsecase
    implements Usecase<PageResultEntity<PostEntity>, PageRequestEntity> {
  final PostRepository postRepository;

  GetExploreFeedUsecase(this.postRepository);

  @override
  Future<Either<Failure, PageResultEntity<PostEntity>>> call(
    PageRequestEntity params,
  ) async {
    return await postRepository.fetchExploreFeed(params);
  }
}
