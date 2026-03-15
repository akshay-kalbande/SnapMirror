import 'package:dartz/dartz.dart';

import '../../core/failures/failure.dart';
import '../../core/usecases/usecase.dart';
import '../entities/chat_preview_entity.dart';
import '../entities/user_entity.dart';
import '../repositories/chat_repository.dart';

class GetChatPreviewListUsecase
    implements Usecase<List<ChatPreviewEntity>, UserEntity> {
  final ChatRepository repository;

  GetChatPreviewListUsecase(this.repository);
  @override
  Future<Either<Failure, List<ChatPreviewEntity>>> call(
    UserEntity params,
  ) async {
    return await repository.getChatPreviewList(params);
  }
}
