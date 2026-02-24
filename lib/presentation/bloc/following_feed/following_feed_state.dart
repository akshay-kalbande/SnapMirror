part of 'following_feed_bloc.dart';

@Freezed(genericArgumentFactories: true, fromJson: true, toJson: true)
sealed class FollowingFeedState with _$FollowingFeedState {
  const factory FollowingFeedState({
    @Default(false) bool isLoading,
    @PageResultStringConverter() final PageResult<String>? posts,
    @JsonKey(includeFromJson: false, includeToJson: false)
    final ScreenMessage? message,
  }) = _FollowingFeedState;

  factory FollowingFeedState.fromJson(Map<String, dynamic> json) =>
      _$FollowingFeedStateFromJson(json);
}
