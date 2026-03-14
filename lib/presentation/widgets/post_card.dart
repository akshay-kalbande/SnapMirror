import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import '../../core/app_service.dart';
import '../../core/route/routes.dart';
import '../../core/utils/app_utils.dart';
import '../../domain/entities/user_entity.dart';
import '../../core/utils/dimensions.dart';
import 'package:intl/intl.dart';

import '../bloc/auth/auth_bloc.dart';
import '../bloc/post/post_card_bloc.dart';

import 'like_animation.dart';
import 'post_image.dart';
import 'profile_image.dart';

class PostCard extends StatefulWidget {
  const PostCard({super.key});

  @override
  State<PostCard> createState() => _PostCardState();
}

class _PostCardState extends State<PostCard> {
  late final UserEntity user;
  int totalComments = 0;
  bool isLikeAnimating = false;
  @override
  void initState() {
    super.initState();
    context.read<AuthBloc>().state.whenOrNull(
      authenticated: (user, authLoading) => this.user = user,
    );
  }

  @override
  Widget build(BuildContext context) {
    var screenWidth = MediaQuery.of(context).size.width;
    return BlocConsumer<PostCardBloc, PostCardState>(
      listenWhen: (previous, current) =>
          (current.whenOrNull(loaded: (post, bookmarked) => bookmarked) ??
              true) !=
          (previous.whenOrNull(loaded: (post, bookmarked) => bookmarked) ??
              true),
      listener: (context, state) {
        state.whenOrNull(
          loaded: (post, bookmarked) => AppUtils.showInfoMessage(
            context,
            bookmarked ? 'Post saved!' : 'Post unsaved!',
          ),
        );
      },
      builder: (context, state) => state.map(
        loading: (value) => Center(child: const CircularProgressIndicator()),
        error: (error) => Center(child: Text(error.error)),
        loaded: (value) {
          final bloc = context.read<PostCardBloc>();
          return Container(
            decoration: BoxDecoration(
              color: Colors.black,
              border: screenWidth >= webScreenSize
                  ? Border.all(color: Colors.white)
                  : Border.all(),
            ),
            padding: const EdgeInsets.symmetric(vertical: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: const EdgeInsetsDirectional.only(
                    start: 16,
                    bottom: 4,
                    top: 4,
                    end: 0,
                  ),
                  child: Row(
                    children: [
                      InkWell(
                        onTap: () =>
                            context.push('${Routes.user}/${value.post.uid}'),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            ProfileImage(
                              profileImageUrl: value.post.profImageUrl,
                              isSmall: true,
                            ),
                            // Container(
                            //   height: 32,
                            //   width: 32,
                            //   decoration: BoxDecoration(
                            //     shape: BoxShape.circle,
                            //     image: DecorationImage(
                            //       image: CachedNetworkImageProvider(
                            //         value.post.profImageUrl,
                            //       ),
                            //       fit: BoxFit.cover,
                            //     ),
                            //   ),
                            // ),
                            // CircleAvatar(
                            //   radius: 16,
                            //   // backgroundImage: NetworkImage(widget.snap['profImageUrl']),
                            //   child: CachedNetworkImage(
                            //     imageUrl: value.post.profImageUrl,
                            //     errorWidget: (context, url, error) =>
                            //         const Icon(Icons.error),
                            //   ),
                            // ),
                            Padding(
                              padding: const EdgeInsets.only(left: 8),
                              child: Text(value.post.username),
                            ),
                          ],
                        ),
                      ),
                      Spacer(),
                      IconButton(
                        onPressed: () => showDialog(
                          context: context,
                          builder: (context) => SimpleDialog(
                            children: [
                              SimpleDialogOption(
                                padding: const EdgeInsets.all(20),
                                onPressed: () {
                                  bloc.add(
                                    PostCardEvent.bookmarkClicked(
                                      value.post,
                                      value.bookmarked,
                                    ),
                                  );
                                  context.pop();
                                },
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  spacing: 5,
                                  children: !value.bookmarked
                                      ? [
                                          const Text('Save'),
                                          const Icon(Icons.bookmark_border),
                                        ]
                                      : [
                                          const Text('Unsave'),
                                          const Icon(Icons.bookmark_added),
                                        ],
                                ),
                              ),
                              SimpleDialogOption(
                                padding: const EdgeInsets.all(20),
                                onPressed: () {
                                  context.pop();
                                },
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  spacing: 5,
                                  children: [
                                    const Text('Report Post'),
                                    const Icon(Icons.report_outlined),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          // builder: (context) => Dialog(
                          //   child: ListView(
                          //     padding: EdgeInsets.symmetric(vertical: 16),
                          //     shrinkWrap: true,
                          //     children: [
                          //       "delete",
                          //     ]
                          //         .map((e) => InkWell(
                          //               onTap: () {},
                          //               child: Container(
                          //                 padding: const EdgeInsets.symmetric(
                          //                   vertical: 12,
                          //                   horizontal: 16,
                          //                 ),
                          //                 child: Text(e),
                          //               ),
                          //             ))
                          //         .toList(),
                          //   ),
                          // ),
                        ),
                        icon: const Icon(Icons.more_vert),
                      ),
                    ],
                  ),
                ),
                InkWell(
                  onDoubleTap: () {
                    context.read<PostCardBloc>().add(
                      PostCardEvent.toggled(value.post),
                    );
                    setState(() {
                      isLikeAnimating = true;
                    });
                  },
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      PostImage(imageUrl: value.post.imageUrl),
                      Opacity(
                        opacity: isLikeAnimating ? 1 : 0,
                        child: LikeAnimation(
                          isAnimating: isLikeAnimating,
                          duration: const Duration(milliseconds: 400),
                          onEnd: () {
                            setState(() {
                              isLikeAnimating = false;
                            });
                          },
                          child: const Icon(
                            Icons.favorite_sharp,
                            color: Colors.red,
                            size: 100,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Row(
                  children: [
                    IconButton(
                      onPressed: () => context.read<PostCardBloc>().add(
                        PostCardEvent.toggled(value.post),
                      ),
                      icon: value.post.likes.contains(user.uid)
                          ? const Icon(Icons.favorite, color: Colors.red)
                          : const Icon(
                              Icons.favorite_border_outlined,
                              color: Colors.white,
                            ),
                    ),
                    IconButton(
                      onPressed: () => context.push(
                        '${Routes.comments}/${value.post.postId}',
                      ),
                      icon: const Icon(Icons.comment, color: Colors.white),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.send, color: Colors.white),
                    ),
                    Flexible(child: Container()),
                    // IconButton(
                    //   onPressed: () {
                    //     // setState(() {
                    //     //   isSaved = !isSaved;
                    //     // });
                    //   },
                    //   icon:
                    //       // isSaved
                    //       //     ? const Icon(Icons.bookmark)
                    //       //     :
                    //       const Icon(Icons.bookmark_outline_outlined),
                    // ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 12),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        '${value.post.likes.length} likes',
                        style: const TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 4),
                        child: RichText(
                          text: TextSpan(
                            children: [
                              TextSpan(
                                text: '${value.post.username}  ',
                                style: const TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ),
                              ),
                              TextSpan(
                                text: value.post.caption,
                                style: const TextStyle(color: Colors.white),
                              ),
                            ],
                          ),
                        ),
                      ),
                      StreamBuilder(
                        stream: FirebaseFirestore.instance
                            .collection('posts')
                            .doc(value.post.postId)
                            .collection('comments')
                            .snapshots(),
                        builder: (context, snapshot) {
                          if (!snapshot.hasData) {
                            return const CircularProgressIndicator();
                          }
                          return InkWell(
                            onTap: () => context.push(
                              '${Routes.comments}/${value.post.postId}',
                            ),
                            child: snapshot.data!.docs.isEmpty
                                ? Container()
                                : Padding(
                                    padding: const EdgeInsets.symmetric(
                                      vertical: 4,
                                    ),
                                    child: Text(
                                      'View all ${snapshot.data!.docs.length} comments',
                                      style: const TextStyle(
                                        color: Colors.grey,
                                      ),
                                    ),
                                  ),
                          );
                        },
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                          vertical: 4,
                          horizontal: 2,
                        ),
                        child: Text(
                          DateFormat.yMMMd().format(value.post.datePublished),
                          style: const TextStyle(
                            color: Colors.grey,
                            fontSize: 12,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
