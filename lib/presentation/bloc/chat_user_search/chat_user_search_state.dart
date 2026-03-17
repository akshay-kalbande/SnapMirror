part of 'chat_user_search_bloc.dart';

@freezed
sealed class ChatUserSearchState with _$ChatUserSearchState {
  const factory ChatUserSearchState({
    required final List<UserEntity> users,
    @Default(false) bool isLoading,
    final ScreenMessage? message,
  }) = _ChatUserSearchState;
}
