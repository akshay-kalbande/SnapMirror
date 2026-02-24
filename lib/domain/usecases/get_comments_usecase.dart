import 'package:dartz/dartz.dart';

import '../../core/failures/failure.dart';
import '../../core/usecases/usecase.dart';
import '../entities/page_request_entity.dart';
import '../entities/page_result_entity.dart';
import '../repositories/comments_repository.dart';

class GetCommentsUsecase
    implements Usecase<PageResultEntity<String>, PageRequestEntity> {
  final CommentsRepository repository;

  GetCommentsUsecase(this.repository);
  @override
  Future<Either<Failure, PageResultEntity<String>>> call(
    PageRequestEntity params,
  ) async {
    return await repository.getComments(params);
  }
}
