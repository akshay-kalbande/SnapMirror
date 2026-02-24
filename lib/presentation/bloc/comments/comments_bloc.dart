import 'dart:async';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../common/messages/screen_message.dart';
import '../../../common/page_result.dart';
import '../../../core/app_service.dart';
import '../../../domain/entities/page_request_entity.dart';
import '../../../domain/usecases/get_comments_usecase.dart';
import '../../../domain/usecases/post_comment_usecase.dart';

part 'comments_event.dart';
part 'comments_state.dart';
part 'comments_bloc.freezed.dart';

class CommentsBloc extends Bloc<CommentsEvent, CommentsState> {
  final String postID;
  final GetCommentsUsecase getCommentsUsecase;
  final PostCommentUsecase postCommentUsecase;
  CommentsBloc({
    required this.postID,
    required this.getCommentsUsecase,
    required this.postCommentUsecase,
  }) : super(const CommentsState()) {
    on<_Started>(_onStarted);
    on<_AddComment>(_onAddComment);
  }

  FutureOr<void> _onStarted(_Started event, Emitter<CommentsState> emit) async {
    print('fetching comments');
    (await getCommentsUsecase(
      PageRequestEntity(
        nextPageToken: state.comments?.nextPageToken,
        sortBy: 'datePublished',
        pageSize: 16,
        sortType: PageSortType.desc,
        isEqualToFieldMap: {'postId': postID},
      ),
    )).fold(
      (l) => emit(
        state.copyWith(
          comments:
              state.comments ??
              PageResult<String>(items: [], fetchingMore: false),
          message: ScreenMessage(
            content: l.message,
            timestamp: DateTime.now(),
            isError: true,
          ),
        ),
      ),
      (r) => emit(
        state.copyWith(
          comments: PageResult.fromEntity(
            r,
          ).copyWith(items: [...state.comments?.items ?? [], ...r.items]),
        ),
      ),
    );
  }

  FutureOr<void> _onAddComment(
    _AddComment event,
    Emitter<CommentsState> emit,
  ) async {
    if (event.message.isEmpty) {
      emit(
        state.copyWith(
          message: ScreenMessage(
            content: 'Text cannot be empty',
            timestamp: DateTime.now(),
            isError: true,
          ),
        ),
      );
      return;
    }
    (await postCommentUsecase(
      PostCommentParams(
        postID: postID,
        text: event.message,
        user: AppService.instance.user,
      ),
    )).fold(
      (l) => emit(
        state.copyWith(
          message: ScreenMessage(
            content: l.message,
            timestamp: DateTime.now(),
            isError: true,
          ),
        ),
      ),
      (r) => emit(
        state.copyWith(
          isLoading: false,
          comments: PageResult(
            items: [r.commentId, ...state.comments?.items ?? []],
            fetchingMore: false,
            totalItemCount: state.comments?.totalItemCount ?? 0 + 1,
            isLastPage: state.comments?.isLastPage ?? false,
            nextPageToken: state.comments?.nextPageToken,
          ),
        ),
      ),
    );
  }
}
