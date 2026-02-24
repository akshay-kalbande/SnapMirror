import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../domain/entities/user_entity.dart';
import '../../../domain/usecases/get_all_followings_of_user.dart';
import '../../../domain/usecases/get_user_usecase.dart';
import '../../../domain/usecases/unfollow_user.dart';
import '../../../common/messages/screen_message.dart';

part 'following_list_event.dart';
part 'following_list_state.dart';
part 'following_list_bloc.freezed.dart';

class FollowingListBloc extends Bloc<FollowingListEvent, FollowingListState> {
  final GetAllFollowingsOfUser getAllFollowingsOfUser;
  final UnfollowUser unfollowUser;
  final GetUserUsecase getUserUsecase;
  FollowingListBloc({
    required this.getAllFollowingsOfUser,
    required this.unfollowUser,
    required this.getUserUsecase,
  }) : super(const FollowingListState()) {
    on<_Started>(_onStarted);
    on<_StartedWithUserID>(_onStartedWithUserID);
    on<_UnfollowButtonClicked>(_onUnfollowButtonClicked);
  }

  FutureOr<void> _onStarted(
    _Started event,
    Emitter<FollowingListState> emit,
  ) async {
    emit(state.copyWith(isLoading: true));
    emit(
      (await getAllFollowingsOfUser(event.user.following)).fold(
        (l) => state.copyWith(
          user: event.user,
          isLoading: false,
          notification: ScreenMessage(
            content: l.message,
            timestamp: DateTime.now(),
            isError: true,
          ),
        ),
        (r) =>
            state.copyWith(user: event.user, followings: r, isLoading: false),
      ),
    );
  }

  FutureOr<void> _onStartedWithUserID(
    _StartedWithUserID event,
    Emitter<FollowingListState> emit,
  ) async {
    (await getUserUsecase(event.userID)).fold(
      (l) => state.copyWith(
        notification: ScreenMessage(
          content: l.message,
          timestamp: DateTime.now(),
          isError: true,
        ),
      ),
      (r) => add(FollowingListEvent.started(r)),
    );
  }

  FutureOr<void> _onUnfollowButtonClicked(
    _UnfollowButtonClicked event,
    Emitter<FollowingListState> emit,
  ) async {
    if (state.followings.isEmpty) return;
    emit(state.copyWith(isLoading: true));
    final now = DateTime.now();
    emit(
      (await unfollowUser(event.following)).fold(
        (l) => state.copyWith(
          isLoading: false,
          notification: ScreenMessage(
            content: l.message,
            timestamp: now,
            isError: true,
          ),
        ),
        (r) => state.copyWith(
          isLoading: false,
          followings: state.followings
              .where((element) => element.uid != event.following.uid)
              .toList(),
          notification: ScreenMessage(
            content: 'User unfollowed successfully!',
            timestamp: now,
            isError: false,
          ),
        ),
      ),
    );
  }
}
