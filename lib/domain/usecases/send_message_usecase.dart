import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';

import '../../core/failures/failure.dart';
import '../../core/usecases/usecase.dart';
import '../entities/chat_entity.dart';
import '../entities/user_entity.dart';
import '../repositories/chat_repository.dart';

class SendMessageUsecase implements Usecase<ChatEntity, SendMessageParams> {
  final ChatRepository repository;

  SendMessageUsecase(this.repository);
  @override
  Future<Either<Failure, ChatEntity>> call(SendMessageParams params) async {
    return await repository.sendMessage(
      self: params.self,
      userId: params.user.uid,
      message: params.message,
    );
  }
}

class SendMessageParams extends Equatable {
  final UserEntity self;
  final UserEntity user;
  final ChatEntity message;

  const SendMessageParams({
    required this.self,
    required this.user,
    required this.message,
  });

  @override
  List<Object?> get props => [self, user, message];
}
