import '../../core/usecases/usecase.dart';
import '../entities/chat_preview_entity.dart';
import '../repositories/chat_repository.dart';
import 'get_user_chats_usecase.dart';

class GetPreviewMessageStreamUsecase
    implements StreamUsecase<List<ChatPreviewEntity>, String> {
  final ChatRepository repository;

  GetPreviewMessageStreamUsecase(this.repository);
  @override
  Stream<List<ChatPreviewEntity>> call(String params) {
    return repository.previewMessageStream(params).asBroadcastStream();
  }
}
