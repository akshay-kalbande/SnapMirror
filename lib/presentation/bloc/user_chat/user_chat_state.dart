part of 'user_chat_bloc.dart';

@freezed
sealed class UserChatState with _$UserChatState {
  const factory UserChatState({
    required final UserEntity self,
    required final UserEntity user,
    required final List<ChatEntity> chats,
    @Default(false) bool isLoading,
    ScreenMessage? message,
  }) = _UserChatState;
}
