import 'package:dartz/dartz.dart';

import '../../core/failures/failure.dart';
import '../entities/chat_preview_entity.dart';
import '../entities/user_entity.dart';

abstract class ChatRepository {
  Future<Either<Failure, List<ChatPreviewEntity>>> getChatPreviewList(
    final UserEntity self,
  );
}
