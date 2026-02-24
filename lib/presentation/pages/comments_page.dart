import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../app/injection_container.dart';
import '../../core/app_service.dart';
import '../../core/theme/app_colors.dart';
import '../../core//utils/app_utils.dart';
import '../bloc/comments/comments_bloc.dart';
import '../bloc/comments_card/comments_card_bloc.dart';
import '../widgets/comment_card.dart';

class CommentsPage extends StatefulWidget {
  const CommentsPage({super.key});

  @override
  State<CommentsPage> createState() => _CommentsPageState();
}

class _CommentsPageState extends State<CommentsPage> {
  final TextEditingController controller = TextEditingController();

  @override
  void dispose() {
    super.dispose();
    controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final user = AppService.instance.user;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Text('Comments'),
      ),
      bottomNavigationBar: SafeArea(
        child: Container(
          height: kToolbarHeight,
          margin: EdgeInsets.only(
            bottom: MediaQuery.of(context).viewInsets.bottom,
          ),
          padding: const EdgeInsets.only(left: 16, right: 8),
          child: Row(
            children: [
              CircleAvatar(
                radius: 18,
                child: CachedNetworkImage(
                  imageUrl: user.profileImageUrl ?? '',
                  errorWidget: (context, url, error) => const Icon(Icons.error),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(left: 16.0, right: 8),
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: 'comment as ${user.username}',
                      border: InputBorder.none,
                    ),
                    maxLines: 3,
                    controller: controller,
                  ),
                ),
              ),
              IconButton(
                onPressed: () => context.read<CommentsBloc>().add(
                  CommentsEvent.addComment(controller.text),
                ),
                tooltip: 'Add comment',
                icon: Icon(Icons.send),
                color: AppColors.blueColor,
              ),
              // InkWell(
              //   // onTap: user == null
              //   //     ? null
              //   //     : () {
              //   //         FirestoreMethods().addComment(
              //   //           widget.snap['postId'],
              //   //           user.username,
              //   //           controller.text,
              //   //           user.profileImageUrl,
              //   //           user.uid,
              //   //         );
              //   //         setState(() {
              //   //           controller.text = '';
              //   //         });
              //   //         Navigator.of(context).pushReplacement(
              //   //           MaterialPageRoute(
              //   //             builder: (context) =>
              //   //                 CommentsScreen(snap: widget.snap),
              //   //           ),
              //   //         );
              //   //       },
              //   child: Container(
              //     padding: const EdgeInsets.only(right: 8),
              //     child: const Text(
              //       'Post',
              //       style: TextStyle(color: Colors.blueAccent),
              //     ),
              //   ),
              // ),
            ],
          ),
        ),
      ),
      body: BlocConsumer<CommentsBloc, CommentsState>(
        listener: (context, state) {
          if (state.message != null) {
            AppUtils.showNotification(context, state.message!);
          }
        },
        builder: (context, state) => state.isLoading
            ? const Center(child: CircularProgressIndicator())
            : state.comments == null || state.comments!.items.isEmpty
            ? Center(child: Text('No Comments yet!'))
            : ListView.builder(
                itemCount: state.comments!.items.length,
                cacheExtent: 500,
                itemBuilder: (context, index) => BlocProvider<CommentsCardBloc>(
                  key: ValueKey(state.comments!.items[index]),
                  create: (context) => CommentsCardBloc(
                    getCommentUsecase: sl(),
                    toggleCommentLikeUsecase: sl(),
                    postID: context.read<CommentsBloc>().postID,
                    commentID: state.comments!.items[index],
                  ),
                  child: CommentCard(),
                ),
              ),
      ),
    );
  }
}
