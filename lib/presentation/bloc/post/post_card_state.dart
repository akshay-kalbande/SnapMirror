part of 'post_card_bloc.dart';

@freezed
sealed class PostCardState with _$PostCardState {
  const factory PostCardState.loading() = _Loading;
  const factory PostCardState.loaded(
    final PostEntity post,
    final bool bookmarked,
  ) = _Loaded;
  const factory PostCardState.error(final String error) = _Error;
}
