import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';

import '../../core/failures/failure.dart';
import '../../core/usecases/usecase.dart';
import '../entities/user_entity.dart';
import '../repositories/user_repository.dart';

class SearchFollowingUserUsecase
    implements Usecase<List<UserEntity>, SearchFollowingUserParams> {
  final UserRepository repository;

  SearchFollowingUserUsecase(this.repository);
  @override
  Future<Either<Failure, List<UserEntity>>> call(
    SearchFollowingUserParams params,
  ) async {
    return await repository.searchFollowingUser(params.text, params.user);
  }
}

class SearchFollowingUserParams extends Equatable {
  final String text;
  final UserEntity user;

  const SearchFollowingUserParams({required this.text, required this.user});
  @override
  List<Object?> get props => [text, user];
}
