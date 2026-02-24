import 'dart:async';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';

import '../../../common/messages/screen_message.dart';
import '../../../data/models/comment_model.dart';
import '../../../domain/entities/comment_entity.dart';
import '../../../domain/usecases/get_comment_usecase.dart';
import '../../../domain/usecases/toggle_comment_like_usecase.dart';

part 'comments_card_event.dart';
part 'comments_card_state.dart';
part 'comments_card_bloc.freezed.dart';

class CommentsCardBloc
    extends HydratedBloc<CommentsCardEvent, CommentsCardState> {
  final GetCommentUsecase getCommentUsecase;
  final ToggleCommentLikeUsecase toggleCommentLikeUsecase;
  final String postID;
  final String commentID;
  CommentsCardBloc({
    required this.getCommentUsecase,
    required this.postID,
    required this.commentID,
    required this.toggleCommentLikeUsecase,
  }) : super(const CommentsCardState(comment: null)) {
    _fetchComment();
    on<_LikeToggled>(_onLikeToggled);
    //TODO: add comment listener
  }

  Future<void> _fetchComment() async {
    emit(state.copyWith(isLoading: true));
    (await getCommentUsecase.call((commentID: commentID, postID: postID))).fold(
      (l) => emit(
        state.copyWith(
          message: ScreenMessage(
            content: l.message,
            timestamp: DateTime.now(),
            isError: true,
          ),
        ),
      ),
      (r) => emit(state.copyWith(isLoading: false, comment: r)),
    );
  }

  @override
  CommentsCardState? fromJson(Map<String, dynamic> json) {
    try {
      return CommentsCardState(comment: CommentModel.fromJson(json).entity);
    } catch (e) {
      return null;
    }
  }

  @override
  Map<String, dynamic>? toJson(CommentsCardState state) {
    try {
      return CommentModel.fromEntity(state.comment!).toJson()
        ..['datePublished'] = state.comment!.datePublished.toIso8601String();
    } catch (e) {
      return null;
    }
  }

  FutureOr<void> _onLikeToggled(
    _LikeToggled event,
    Emitter<CommentsCardState> emit,
  ) async {
    (await toggleCommentLikeUsecase(event.comment)).fold(
      (l) => emit(
        state.copyWith(
          message: ScreenMessage(
            content: l.message,
            timestamp: DateTime.now(),
            isError: true,
          ),
        ),
      ),
      (r) => emit(state.copyWith(comment: r)),
    );
  }
}
