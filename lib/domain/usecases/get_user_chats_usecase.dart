import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';

import '../../core/failures/failure.dart';
import '../../core/usecases/usecase.dart';
import '../entities/chat_entity.dart';
import '../entities/user_entity.dart';
import '../repositories/chat_repository.dart';

class GetUserChatsUsecase implements Usecase<List<ChatEntity>, UserChatParams> {
  final ChatRepository repository;

  GetUserChatsUsecase(this.repository);
  @override
  Future<Either<Failure, List<ChatEntity>>> call(UserChatParams params) async {
    return await repository.getUserChats(params.self, params.userId);
  }
}

class UserChatParams extends Equatable {
  final UserEntity self;
  final String userId;

  const UserChatParams({required this.self, required this.userId});

  @override
  // TODO: implement props
  List<Object?> get props => throw UnimplementedError();
}
