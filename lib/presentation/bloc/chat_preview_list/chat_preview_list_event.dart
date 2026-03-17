part of 'chat_preview_list_bloc.dart';

@freezed
class ChatPreviewListEvent with _$ChatPreviewListEvent {
  const factory ChatPreviewListEvent.started() = _Started;
  const factory ChatPreviewListEvent.updated(
    final List<ChatPreviewEntity> previews,
  ) = _Updated;
}
