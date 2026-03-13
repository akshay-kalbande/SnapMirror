import 'package:dartz/dartz.dart';

import '../../core/failures/failure.dart';
import '../../core/usecases/usecase.dart';
import '../entities/user_entity.dart';
import '../repositories/auth_repository.dart';
import '../repositories/user_repository.dart';

class GetLoggedInUserUsecase implements Usecase<UserEntity, String> {
  final AuthRepository authRepository;
  final UserRepository userRepository;
  final bool isWindowsDesktop;
  late final Stream<String?> authStream;
  GetLoggedInUserUsecase({
    required this.authRepository,
    required this.userRepository,
    required this.isWindowsDesktop,
  }) {
    {
      if (isWindowsDesktop) {
        authStream = authRepository.authStream.skip(1);
      } else {
        authStream = authRepository.authStream;
      }
    }
  }
  @override
  Future<Either<Failure, UserEntity>> call(String params) async {
    final res = await authRepository.getUser(params);
    userRepository.getUserBookmarkedPosts(params);
    return res;
  }
}
