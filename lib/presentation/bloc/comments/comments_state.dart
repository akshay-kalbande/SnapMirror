part of 'comments_bloc.dart';

@freezed
sealed class CommentsState with _$CommentsState {
  const factory CommentsState({
    @Default(false) bool isLoading,
    final PageResult<String>? comments,
    ScreenMessage? message,
  }) = _CommentsState;
}
