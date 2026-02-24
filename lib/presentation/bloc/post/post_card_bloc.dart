import 'dart:async';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';

import '../../../core/app_service.dart';
import '../../../data/models/post_model.dart';
import '../../../domain/entities/post_entity.dart';
import '../../../domain/usecases/get_post_feed_subscription_usecase.dart';
import '../../../domain/usecases/get_post_usecase.dart';
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
  PostCardBloc({
    required this.postID,
    required this.postFeedSubscriptionUsecase,
    required this.getPostUsecase,
    required this.updatePostUsecase,
    required this.togglePostUsecase,
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
        final currentPost = state.whenOrNull(loaded: (p) => p);
        if (currentPost == null) {
          emit(PostCardState.loaded(post));
        } else if (currentPost != post) {
          emit(PostCardState.loaded(post));
        }
      },
    );
  }

  FutureOr<void> _onToggled(_Toggled event, Emitter<PostCardState> emit) async {
    emit(
      PostCardState.loaded(event.post.toggleLike(AppService.instance.user.uid)),
    );
    (await togglePostUsecase(
      event.post,
    )).fold((l) => emit(PostCardState.loaded(event.post)), (r) => null);
  }

  void _initializeSubscription() async {
    print('initializing subscription');
    final res = await postFeedSubscriptionUsecase(postID);
    res.fold((l) => print('Error in getting post stream'), (r) {
      _feedSubscription = r.listen(
        (event) => emit(PostCardState.loaded(event)),
        // (event) => add(PostEvent.postUpdated(event)),
        onError: (error) {
          print('Stream Error: $error');
        },
      );
    });
  }

  @override
  PostCardState? fromJson(Map<String, dynamic> json) {
    try {
      print('restoring post from storage');
      json['datePublished'] = Timestamp.fromDate(
        DateTime.parse(json['datePublished']),
      );
      return PostCardState.loaded(PostModel.fromJson(json).entity);
    } catch (e) {
      print('failed to load from storage: $e');
      return PostCardState.error(e.toString());
    }
  }

  @override
  Map<String, dynamic>? toJson(PostCardState state) {
    final json = state.whenOrNull(
      loaded: (post) =>
          PostModel.fromEntity(post).toJson()
            ..['datePublished'] = post.datePublished.toIso8601String(),
    );
    print('💾 Saving to storage: $json');
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
  ) {}
}
