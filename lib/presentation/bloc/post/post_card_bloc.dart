import 'dart:async';

import 'package:flutter/foundation.dart';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';

import '../../../core/app_service.dart';
import '../../../data/models/post_model.dart';
import '../../../domain/entities/post_entity.dart';
import '../../../domain/usecases/bookmark_post_usecase.dart' as bk;
import '../../../domain/usecases/get_post_feed_subscription_usecase.dart';
import '../../../domain/usecases/get_post_usecase.dart';
import '../../../domain/usecases/remove_post_from_bookmark_usecase.dart' as rbk;
import '../../../domain/usecases/toggle_post_usecase.dart';
import '../../../domain/usecases/update_post_usecase.dart';

part 'post_card_event.dart';
part 'post_card_state.dart';
part 'post_card_bloc.freezed.dart';

class PostCardBloc extends HydratedBloc<PostCardEvent, PostCardState> {
  final String postID;
  final GetPostUsecase getPostUsecase;
  final UpdatePostUsecase updatePostUsecase;
  final TogglePostLikeUsecase togglePostUsecase;
  final GetPostFeedSubscriptionUsecase postFeedSubscriptionUsecase;
  late final StreamSubscription<PostEntity> _feedSubscription;

  final bk.BookmarkPostUsecase bookmarkPostUsecase;
  final rbk.RemovePostFromBookmarkUsecase removePostFromBookmarkUsecase;
  PostCardBloc({
    required this.postID,
    required this.postFeedSubscriptionUsecase,
    required this.getPostUsecase,
    required this.updatePostUsecase,
    required this.togglePostUsecase,
    required this.bookmarkPostUsecase,
    required this.removePostFromBookmarkUsecase,
  }) : super(const PostCardState.loading()) {
    on<_Toggled>(_onToggled);
    on<_BookmarkCLicked>(_onBookmarkClicked);
    _initializeSubscription();
    _fetchPost();
  }

  Future<void> _fetchPost() async {
    final result = await getPostUsecase(postID);
    result.fold(
      (failure) {
        if (state is! _Loaded) {
          emit(PostCardState.error(failure.message));
        }
      },
      (post) {
        final currentPost = state.whenOrNull(
          loaded: (post, bookmarked) => post,
        );
        if (currentPost == null) {
          emit(
            PostCardState.loaded(
              post,
              AppService.instance.postBookmarked(postID),
            ),
          );
        } else if (currentPost != post) {
          emit(
            PostCardState.loaded(
              post,
              AppService.instance.postBookmarked(postID),
            ),
          );
        }
      },
    );
  }

  FutureOr<void> _onToggled(_Toggled event, Emitter<PostCardState> emit) async {
    emit(
      PostCardState.loaded(
        event.post.toggleLike(AppService.instance.user.uid),
        AppService.instance.postBookmarked(postID),
      ),
    );
    (await togglePostUsecase(event.post)).fold(
      (l) => emit(
        PostCardState.loaded(
          event.post,
          AppService.instance.postBookmarked(postID),
        ),
      ),
      (r) => null,
    );
  }

  void _initializeSubscription() async {
    final res = await postFeedSubscriptionUsecase(postID);
    res.fold((l) => debugPrint('Error getting post stream: ${l.message}'), (r) {
      _feedSubscription = r.listen(
        (event) => emit(
          PostCardState.loaded(
            event,
            AppService.instance.postBookmarked(postID),
          ),
        ),
        // (event) => add(PostEvent.postUpdated(event)),
        onError: (error) {
          debugPrint('Stream Error: $error');
        },
      );
    });
  }

  @override
  PostCardState? fromJson(Map<String, dynamic> json) {
    try {
      json['datePublished'] = Timestamp.fromDate(
        DateTime.parse(json['datePublished']),
      );
      return PostCardState.loaded(
        PostModel.fromJson(json).entity,
        AppService.instance.postBookmarked(postID),
      );
    } catch (e) {
      return PostCardState.error(e.toString());
    }
  }

  @override
  Map<String, dynamic>? toJson(PostCardState state) {
    final json = state.whenOrNull(
      loaded: (post, bookmarked) =>
          PostModel.fromEntity(post).toJson()
            ..['datePublished'] = post.datePublished.toIso8601String(),
    );
    return json;
  }

  @override
  String get id => 'PostBloc_$postID';

  @override
  Future<void> close() {
    _feedSubscription.cancel();
    return super.close();
  }

  FutureOr<void> _onBookmarkClicked(
    _BookmarkCLicked event,
    Emitter<PostCardState> emit,
  ) async {
    if (event.bookmarked) {
      final res = await removePostFromBookmarkUsecase(
        rbk.BookmarkPostParams(
          postID: event.post.postId,
          userID: AppService.instance.user.uid,
        ),
      );
      res.fold((l) => print('unbookmark failed: ${l.message}'), (r) => null);
    } else {
      final res = await bookmarkPostUsecase(
        bk.BookmarkPostParams(
          postID: event.post.postId,
          userID: AppService.instance.user.uid,
        ),
      );
      res.fold((l) => print('bookmark failed: ${l.message}'), (r) => null);
    }
    emit(
      PostCardState.loaded(
        event.post,
        AppService.instance.postBookmarked(event.post.postId),
      ),
    );
  }
}
