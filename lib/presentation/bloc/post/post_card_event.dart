part of 'post_card_bloc.dart';

@freezed
sealed class PostCardEvent with _$PostCardEvent {
  const factory PostCardEvent.toggled(final PostEntity post) = _Toggled;
  const factory PostCardEvent.bookmarkClicked(
    final PostEntity post,
    final bool bookmarked,
  ) = _BookmarkCLicked;
}
