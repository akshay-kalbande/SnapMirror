import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../domain/entities/user_entity.dart';
import '../../../domain/usecases/get_all_followers_of_user.dart';
import '../../../domain/usecases/get_user_usecase.dart';
import '../../../domain/usecases/remove_user_from_follower.dart';
import '../../../common/messages//screen_message.dart';

part 'followers_list_event.dart';
part 'followers_list_state.dart';
part 'followers_list_bloc.freezed.dart';

class FollowersListBloc extends Bloc<FollowersListEvent, FollowersListState> {
  final GetAllFollowersOfUser getAllFollowersOfUser;
  final RemoveUserFromFollower removeUserFromFollower;
  final GetUserUsecase getUserUsecase;
  FollowersListBloc({
    required this.getAllFollowersOfUser,
    required this.removeUserFromFollower,
    required this.getUserUsecase,
  }) : super(const FollowersListState(isLoading: true)) {
    on<_Started>(_onStarted);
    on<_StartedWithUserID>(_onStartedWithUserID);
    on<_RemoveFollowerClicked>(_onRemoveFollowerClicked);
  }

  FutureOr<void> _onStarted(
    _Started event,
    Emitter<FollowersListState> emit,
  ) async {
    emit(state.copyWith(isLoading: true));
    emit(
      (await getAllFollowersOfUser(event.user.followers)).fold(
        (l) => FollowersListState(
          isLoading: false,
          notification: ScreenMessage(
            content: l.message,
            timestamp: DateTime.now(),
            isError: true,
          ),
        ),
        (r) => FollowersListState(
          user: event.user,
          followers: r,
          isLoading: false,
        ),
      ),
    );
  }

  FutureOr<void> _onStartedWithUserID(
    _StartedWithUserID event,
    Emitter<FollowersListState> emit,
  ) async {
    (await getUserUsecase(event.userID)).fold(
      (l) => emit(
        state.copyWith(
          notification: ScreenMessage(
            content: l.message,
            timestamp: DateTime.now(),
            isError: true,
          ),
          isLoading: false,
        ),
      ),
      (r) => add(_Started(r)),
    );
  }

  FutureOr<void> _onRemoveFollowerClicked(
    _RemoveFollowerClicked event,
    Emitter<FollowersListState> emit,
  ) async {
    if (state.followers.isEmpty) return;
    emit(state.copyWith(isLoading: true));
    await Future.delayed(const Duration(milliseconds: 400));
    final now = DateTime.now();
    emit(
      (await removeUserFromFollower(event.follower)).fold(
        (l) => state.copyWith(
          notification: ScreenMessage(
            content: l.message,
            timestamp: now,
            isError: true,
          ),
        ),
        (r) => state.copyWith(
          followers: state.followers
              .where((user) => user.uid != event.follower.uid)
              .toList(),
          notification: ScreenMessage(
            content: 'Follower removed successfully!',
            timestamp: now,
            isError: false,
          ),
        ),
      ),
    );
  }
}
