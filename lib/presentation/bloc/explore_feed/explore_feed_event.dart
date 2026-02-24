part of 'explore_feed_bloc.dart';

@freezed
class ExploreFeedEvent with _$ExploreFeedEvent {
  const factory ExploreFeedEvent.started() = _Started;
  const factory ExploreFeedEvent.refreshed() = _Refreshed;
  const factory ExploreFeedEvent.fetchMore() = _FetchMore;
}
