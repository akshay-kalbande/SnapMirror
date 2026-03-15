import 'package:dartz/dartz.dart';

import '../../core/failures/failure.dart';
import '../../domain/entities/chat_preview_entity.dart';
import '../../domain/entities/user_entity.dart';
import '../../domain/repositories/chat_repository.dart';
import '../../domain/repositories/user_repository.dart';
import '../data_sources/remote_data_sources/chat_remote_data_source.dart';

class ChatRepositoryImpl implements ChatRepository {
  final ChatRemoteDataSource dataSource;
  final UserRepository userRepository;

  ChatRepositoryImpl({required this.dataSource, required this.userRepository});
  @override
  Future<Either<Failure, List<ChatPreviewEntity>>> getChatPreviewList(
    UserEntity self,
  ) async {
    try {
      final res = await dataSource.getChatPreviewList(self);
      final uids = res
          .map(
            (e) => e.participants.firstWhere((element) => element != self.uid),
          )
          .toList();
      final usersRes = await userRepository.getAllUsers(uids);
      return usersRes.fold((l) => Left(l), (users) {
        return right(
          res.map((e) {
            final uid = e.participants.firstWhere(
              (element) => element != self.uid,
            );
            return ChatPreviewEntity(
              id: e.id,
              lastMessage: e.lastMessage,
              lastMessageTime: e.lastMessageTime,
              lastSenderId: e.lastSenderId,
              user: users[uid]!,
              unreadCount: e.unreadCount[uid]!,
            );
          }).toList(),
        );
      });
    } catch (e) {
      return Left(ServerFailure(e.toString()));
    }
  }
}
