import 'dart:async';

import 'package:bloc_concurrency/bloc_concurrency.dart' as concurrency;
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../domain/entities/page_request_entity.dart';
import '../../../domain/entities/post_entity.dart';
import '../../../domain/entities/user_entity.dart';
import '../../../domain/usecases/follow_user.dart';
import '../../../domain/usecases/get_posts_of_user.dart';
import '../../../domain/usecases/get_user_usecase.dart';
import '../../../domain/usecases/unfollow_user.dart';
import '../../../common/messages/screen_message.dart';

part 'profile_event.dart';
part 'profile_state.dart';
part 'profile_bloc.freezed.dart';

class OwnerProfileBloc extends ProfileBloc {
  OwnerProfileBloc({
    required super.getPostsOfUser,
    required super.getUserUsecase,
    required super.followUser,
    required super.unfollowUser,
  });
}

class UserProfileBloc extends ProfileBloc {
  UserProfileBloc({
    required super.getPostsOfUser,
    required super.getUserUsecase,
    required super.followUser,
    required super.unfollowUser,
  });
}

class ProfileBloc extends Bloc<ProfileEvent, ProfileState> {
  final GetPostsOfUser getPostsOfUser;
  final GetUserUsecase getUserUsecase;
  final FollowUser followUser;
  final UnfollowUser unfollowUser;
  ProfileBloc({
    required this.getPostsOfUser,
    required this.getUserUsecase,
    required this.followUser,
    required this.unfollowUser,
  }) : super(const ProfileState()) {
    on<_Started>(_onStarted);
    on<_StartedWithUserID>(_onStartedWithUserID);
    on<_FetchMorePosts>(
      _onFetchMorePosts,
      transformer: concurrency.droppable(),
    );
    on<_EditProfileClicked>(_onEditProfileClicked);
    on<_Follow>(_onFollowed);
    on<_Unfollow>(_onUnfollowed);
    on<_Updated>(_onUpdated);
  }

  FutureOr<void> _onStarted(_Started event, Emitter<ProfileState> emit) async {
    emit(
      ProfileState(
        user: event.user,
        posts: [],
        message: null,
        nextPageToken: null,
      ),
    );
    emit(await _fetchMorePosts(event.user));
  }

  FutureOr<void> _onFetchMorePosts(
    _FetchMorePosts event,
    Emitter<ProfileState> emit,
  ) async {
    if (!state.fetchingMore) emit(state.copyWith(fetchingMore: true));
    emit(await _fetchMorePosts(event.user));
  }

  Future<ProfileState> _fetchMorePosts(final UserEntity user) async {
    final postRes = await getPostsOfUser(
      PageRequestEntity(
        nextPageToken: state.nextPageToken,
        sortBy: 'datePublished',
        pageSize: 8,
        isEqualToFieldMap: {'uid': user.uid},
      ),
    );
    return postRes.fold(
      (l) => ProfileState(
        user: user,
        message: ScreenMessage(
          content: l.message,
          timestamp: DateTime.now(),
          isError: true,
        ),
      ),
      (r) => ProfileState(
        user: user,
        posts: [...state.posts, ...r.items],
        nextPageToken: r.nextPageToken,
        isLastPage: r.isLastPage,
      ),
    );
  }

  FutureOr<void> _onEditProfileClicked(
    _EditProfileClicked event,
    Emitter<ProfileState> emit,
  ) {}

  FutureOr<void> _onStartedWithUserID(
    _StartedWithUserID event,
    Emitter<ProfileState> emit,
  ) async {
    emit(state.copyWith(isLoading: true));
    final userRes = await getUserUsecase(event.userID);
    UserEntity? user;
    userRes.fold(
      (l) => emit(
        ProfileState(
          isLoading: false,
          message: ScreenMessage(
            content: l.message,
            timestamp: DateTime.now(),
            isError: true,
          ),
        ),
      ),
      (r) => user = r,
    );
    if (user != null) emit(await _fetchMorePosts(user!));
  }

  FutureOr<void> _onFollowed(_Follow event, Emitter<ProfileState> emit) async {
    (await followUser(event.following)).fold(
      (l) => emit(
        state.copyWith(
          message: ScreenMessage(
            content: l.message,
            timestamp: DateTime.now(),
            isError: true,
          ),
        ),
      ),
      (r) => emit(state.copyWith(user: r, message: null)),
    );
  }

  FutureOr<void> _onUnfollowed(
    _Unfollow event,
    Emitter<ProfileState> emit,
  ) async {
    (await unfollowUser(event.following)).fold(
      (l) => emit(
        state.copyWith(
          message: ScreenMessage(
            content: l.message,
            timestamp: DateTime.now(),
            isError: true,
          ),
        ),
      ),
      (r) => emit(state.copyWith(user: r, message: null)),
    );
  }

  FutureOr<void> _onUpdated(_Updated event, Emitter<ProfileState> emit) {
    emit(state.copyWith(user: event.user));
  }
}
