import 'package:dartz/dartz.dart';

import '../../core/failures/failure.dart';
import '../../core/usecases/usecase.dart';
import '../repositories/auth_repository.dart';

class LogoutUserUsecase implements Usecase<void, NoParams> {
  final AuthRepository _authRepository;

  LogoutUserUsecase(this._authRepository);
  @override
  Future<Either<Failure, void>> call(NoParams? params) async {
    return await _authRepository.logoutUser();
  }
}
