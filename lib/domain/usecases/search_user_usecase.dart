import 'package:dartz/dartz.dart';

import '../../core/failures/failure.dart';
import '../../core/usecases/usecase.dart';
import '../entities/user_entity.dart';
import '../repositories/user_repository.dart';

class SearchUserUsecase implements Usecase<List<UserEntity>, String> {
  final UserRepository userRepository;

  SearchUserUsecase(this.userRepository);
  @override
  Future<Either<Failure, List<UserEntity>>> call(String params) async {
    return await userRepository.searchUser(params.toLowerCase().trim());
  }
}
