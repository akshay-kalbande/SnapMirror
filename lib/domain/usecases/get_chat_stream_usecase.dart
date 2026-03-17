import '../../core/usecases/usecase.dart';
import '../entities/chat_entity.dart';
import '../repositories/chat_repository.dart';
import 'get_user_chats_usecase.dart';

class GetChatStreamUsecase
    implements StreamUsecase<List<ChatEntity>, UserChatParams> {
  final ChatRepository repository;

  GetChatStreamUsecase(this.repository);
  @override
  Stream<List<ChatEntity>> call(UserChatParams params) {
    return repository.chatStream(params.self.uid, params.userId);
  }
}
