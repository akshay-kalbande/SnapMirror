part of 'comments_card_bloc.dart';

@freezed
sealed class CommentsCardEvent with _$CommentsCardEvent {
  const factory CommentsCardEvent.likeToggled(final CommentEntity comment) =
      _LikeToggled;
}
