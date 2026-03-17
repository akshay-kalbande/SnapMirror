import 'package:dartz/dartz.dart';

import '../../core/failures/failure.dart';
import '../../core/usecases/usecase.dart';
import '../repositories/chat_repository.dart';
import 'get_user_chats_usecase.dart';

class MarkAllMessagesAsReadUsecase implements Usecase<void, UserChatParams> {
  final ChatRepository repository;

  MarkAllMessagesAsReadUsecase(this.repository);
  @override
  Future<Either<Failure, void>> call(UserChatParams params) async {
    return await repository.markAllMessagesAsRead(
      params.self.uid,
      params.userId,
    );
  }
}
