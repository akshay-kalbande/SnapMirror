part of 'search_bloc.dart';

@freezed
sealed class SearchEvent with _$SearchEvent {
  const factory SearchEvent.queryChanged(final String text) = _QueryChanged;
  const factory SearchEvent.cleared() = _Cleared;
}
