import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import '../../core/app_service.dart';
import '../../core/route/routes.dart';
import 'package:intl/intl.dart';

import '../bloc/comments_card/comments_card_bloc.dart';

class CommentCard extends StatelessWidget {
  const CommentCard({super.key});

  @override
  Widget build(BuildContext context) {
    final user = AppService.instance.user;
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
      child: BlocBuilder<CommentsCardBloc, CommentsCardState>(
        builder: (context, state) => state.isLoading || state.comment == null
            ? const Center(child: CircularProgressIndicator())
            : Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  InkWell(
                    onTap: () =>
                        context.push('${Routes.user}/${state.comment!.uid}'),
                    child: CircleAvatar(
                      radius: 18,
                      backgroundImage: NetworkImage(
                        state.comment!.profileImageUrl,
                      ),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(left: 12, right: 32.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          RichText(
                            text: TextSpan(
                              children: [
                                TextSpan(
                                  text: state.comment!.username,
                                  style: const TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                  ),
                                ),
                                TextSpan(text: '  '),
                                TextSpan(
                                  text: state.comment!.comment,
                                  style: const TextStyle(color: Colors.white),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 8.0),
                            child: Row(
                              children: [
                                Text(
                                  DateFormat.yMMMd().format(
                                    state.comment!.datePublished,
                                  ),
                                  style: const TextStyle(
                                    color: Colors.grey,
                                    fontSize: 12,
                                  ),
                                ),
                                const SizedBox(width: 20),
                                Text(
                                  '${state.comment!.likes.length} likes',
                                  style: const TextStyle(
                                    color: Colors.grey,
                                    fontSize: 12,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  IconButton(
                    onPressed: () => context.read<CommentsCardBloc>().add(
                      CommentsCardEvent.likeToggled(state.comment!),
                    ),
                    icon: state.comment!.likes.contains(user.uid)
                        ? const Icon(
                            Icons.favorite,
                            color: Colors.red,
                            size: 20,
                          )
                        : const Icon(
                            Icons.favorite_border_outlined,
                            color: Colors.grey,
                            size: 20,
                          ),
                  ),
                ],
              ),
      ),
    );
  }
}
