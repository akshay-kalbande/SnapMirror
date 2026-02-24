part of 'comments_card_bloc.dart';

@freezed
sealed class CommentsCardState with _$CommentsCardState {
  const factory CommentsCardState({
    required final CommentEntity? comment,
    @Default(false) final bool isLoading,
    final ScreenMessage? message,
  }) = _CommentsCardState;
}
