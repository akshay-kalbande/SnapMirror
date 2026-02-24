part of 'post_card_bloc.dart';

@freezed
class PostCardState with _$PostCardState {
  const factory PostCardState.loading() = _Loading;
  const factory PostCardState.loaded(final PostEntity post) = _Loaded;
  const factory PostCardState.error(final String error) = _Error;
}
