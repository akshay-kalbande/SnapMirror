import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';

import '../../app/injection_container.dart';
import '../../core/route/routes.dart';
import '../../core/theme/app_colors.dart';
import '../../domain/entities/post_upload_result_entity.dart';
import '../../domain/usecases/get_post_feed_subscription_usecase.dart';
import '../../domain/usecases/get_post_usecase.dart';
import '../../core/utils/dimensions.dart';
import '../bloc/following_feed/following_feed_bloc.dart';
import '../bloc/post/post_card_bloc.dart';
import '../bloc/upload/upload_bloc.dart';
import '../widgets/post_card.dart';

class FollowingFeedPage extends StatefulWidget {
  const FollowingFeedPage({super.key});

  @override
  State<FollowingFeedPage> createState() => _FollowingFeedPageState();
}

class _FollowingFeedPageState extends State<FollowingFeedPage> {
  final _scrollController = ScrollController();

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(_scrollListener);
  }

  void _scrollListener() {
    if (_scrollController.position.pixels >=
        _scrollController.position.maxScrollExtent * 0.7) {
      final bloc = context.read<FollowingFeedBloc>();
      final posts = bloc.state.posts;
      if (posts != null && !posts.fetchingMore && !posts.isLastPage) {
        bloc.add(FollowingFeedEvent.fetchMore());
      }
    }
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final bloc = context.read<FollowingFeedBloc>();
    return Scaffold(
      body: RefreshIndicator(
        onRefresh: () async => bloc.add(FollowingFeedEvent.refreshed()),
        child: CustomScrollView(
          cacheExtent: 1000,
          controller: _scrollController,
          slivers: [
            SliverAppBar(
              pinned: true,
              floating: true,
              toolbarHeight: 0,
              elevation: 0,
              // backgroundColor: Colors.white,
              bottom: PreferredSize(
                preferredSize: Size.fromHeight(
                  context.watch<UploadBloc>().state.canUpload ||
                          context.watch<UploadBloc>().state.postUploadResult ==
                              null
                      ? 0
                      : 30,
                ),
                child: BlocBuilder<UploadBloc, UploadState>(
                  builder: (context, state) {
                    final result = state.postUploadResult;
                    if (state.canUpload || result == null) {
                      return const SizedBox.shrink();
                    }
                    return result.when(
                      error: (failure) =>
                          Text('Upload Failed! ${failure.message}'),
                      started: () => _UploadProgressRow(progress: 0),
                      fileUploading: (progress) =>
                          _UploadProgressRow(progress: progress / 100),
                      fileUploaded: (_) => _UploadProgressRow(progress: 1.0),
                      uploaded: (post) {
                        bloc.add(FollowingFeedEvent.newPostAdded(post));
                        return _UploadProgressRow(progress: 1.0, isDone: true);
                      },
                    );
                  },
                ),
              ),
            ),
            if (screenWidth < webScreenSize)
              SliverAppBar(
                backgroundColor: Colors.black,
                elevation: 10,
                title: Image.asset(
                  'assets/images/word_snap.png',
                  color: Colors.white,
                  fit: BoxFit.fill,
                  height: 48,
                ),
                actions: [
                  IconButton(
                    onPressed: () {
                      context.push(Routes.chatList);
                    },
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    icon: const Icon(Icons.messenger_outline_outlined),
                  ),
                ],
                floating: true,
                snap: true,
                pinned: false,
                forceElevated: true,
              ),

            BlocBuilder<FollowingFeedBloc, FollowingFeedState>(
              builder: (context, state) =>
                  state.isLoading || state.posts == null
                  ? SliverFillRemaining(
                      child: const Center(child: CircularProgressIndicator()),
                    )
                  : state.posts!.items.isEmpty
                  ? SliverFillRemaining(
                      child: Center(
                        child: Text(
                          (state.message?.isError ?? false)
                              ? state.message!.content
                              : 'something went wrong. Try again!',
                        ),
                      ),
                    )
                  : SliverMainAxisGroup(
                      slivers: [
                        SliverPadding(
                          padding: screenWidth >= webScreenSize
                              ? EdgeInsets.symmetric(
                                  horizontal: screenWidth * 0.3,
                                  vertical: 20,
                                )
                              : const EdgeInsets.all(0),

                          sliver: SliverList(
                            delegate: SliverChildBuilderDelegate(
                              childCount: state.posts!.items.length,
                              (context, index) => BlocProvider<PostCardBloc>(
                                key: ValueKey(state.posts!.items[index]),
                                create: (context) => PostCardBloc(
                                  postID: state.posts!.items[index],
                                  postFeedSubscriptionUsecase:
                                      sl<GetPostFeedSubscriptionUsecase>(),
                                  getPostUsecase: sl<GetPostUsecase>(),
                                  togglePostUsecase: sl(),
                                  updatePostUsecase: sl(),
                                  bookmarkPostUsecase: sl(),
                                  removePostFromBookmarkUsecase: sl(),
                                ),
                                child: const PostCard(),
                              ),
                            ),
                          ),
                        ),
                        if (state.posts!.fetchingMore)
                          const SliverToBoxAdapter(
                            child: Padding(
                              padding: EdgeInsets.symmetric(vertical: 20),
                              child: Center(child: CircularProgressIndicator()),
                            ),
                          ),
                      ],
                    ),
            ),
          ],
        ),
      ),
    );
  }
}

class _UploadProgressRow extends StatelessWidget {
  final double progress;
  final bool isDone;

  const _UploadProgressRow({required this.progress, this.isDone = false});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 30,
      child: Row(
        spacing: 10,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Text('Uploading...'),
          Expanded(
            child: LinearProgressIndicator(
              color: AppColors.blueColor,
              minHeight: 5,
              value: progress,
            ),
          ),
          isDone
              ? const Icon(Icons.check_circle, color: Colors.green, size: 20)
              : const SizedBox(width: 20),
        ],
      ),
    );
  }
}
