part of 'chat_preview_list_bloc.dart';

@freezed
sealed class ChatPreviewListState with _$ChatPreviewListState {
  const factory ChatPreviewListState({
    required final UserEntity user,
    required final List<ChatPreviewEntity> chatPreviewList,
    ScreenMessage? message,
  }) = _ChatPreviewListState;
}
