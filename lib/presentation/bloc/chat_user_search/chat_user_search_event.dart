part of 'chat_user_search_bloc.dart';

@freezed
class ChatUserSearchEvent with _$ChatUserSearchEvent {
  const factory ChatUserSearchEvent.queryChanged(final String text) =
      _QueryChanged;
  const factory ChatUserSearchEvent.cleared() = _Cleared;
}
