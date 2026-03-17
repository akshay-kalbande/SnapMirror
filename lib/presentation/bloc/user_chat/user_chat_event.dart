part of 'user_chat_bloc.dart';

@freezed
class UserChatEvent with _$UserChatEvent {
  const factory UserChatEvent.started() = _Started;
  const factory UserChatEvent.messageReceived(final List<ChatEntity> chats) =
      _MessageReceived;
  const factory UserChatEvent.sendMessage(final String text) = _SendMessage;
}
