import 'package:dartz/dartz.dart';

import '../../core/failures/failure.dart';
import '../../core/usecases/usecase.dart';
import '../repositories/auth_repository.dart';
import '../repositories/user_repository.dart';

class LogoutUserUsecase implements Usecase<void, NoParams> {
  final AuthRepository authRepository;
  final UserRepository userRepository;

  LogoutUserUsecase({
    required this.authRepository,
    required this.userRepository,
  });
  @override
  Future<Either<Failure, void>> call(NoParams? params) async {
    return (await authRepository.logoutUser()).fold((l) => Left(l), (r) {
      userRepository.clearSavedPosts();
      return Right(r);
    });
  }
}
