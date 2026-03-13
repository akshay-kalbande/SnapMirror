import 'package:dartz/dartz.dart';

import '../../core/failures/failure.dart';
import '../../core/usecases/usecase.dart';
import '../repositories/user_repository.dart';

class GetUserBookmarkedPostsUsecase implements Usecase<List<String>, String> {
  final UserRepository repository;

  GetUserBookmarkedPostsUsecase(this.repository);
  @override
  Future<Either<Failure, List<String>>> call(String params) async {
    return repository.getUserBookmarkedPosts(params);
  }
}
