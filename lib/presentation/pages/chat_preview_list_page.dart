import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../core/route/routes.dart';
import '../../core/utils/app_utils.dart';
import '../../domain/entities/chat_preview_entity.dart';
import '../bloc/chat_preview_list/chat_preview_list_bloc.dart';
import '../bloc/chat_user_search/chat_user_search_bloc.dart';
import '../widgets/profile_image.dart';

class ChatPreviewListPage extends StatefulWidget {
  const ChatPreviewListPage({super.key});

  @override
  State<ChatPreviewListPage> createState() => _ChatPreviewListPageState();
}

class _ChatPreviewListPageState extends State<ChatPreviewListPage> {
  final SearchController searchController = SearchController();
  late final ChatUserSearchBloc chatUserSearchBloc;

  @override
  void initState() {
    super.initState();
    chatUserSearchBloc = context.read<ChatUserSearchBloc>();
    searchController.addListener(() {
      final text = searchController.text;
      if (text.isEmpty) {
        chatUserSearchBloc.add(ChatUserSearchEvent.cleared());
      } else {
        chatUserSearchBloc.add(ChatUserSearchEvent.queryChanged(text));
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Messages',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.edit_note_rounded),
            onPressed: () {},
          ),
        ],
      ),
      body: Column(
        children: [
          _buildSearchBar(),
          BlocConsumer<ChatPreviewListBloc, ChatPreviewListState>(
            listener: (context, state) {
              if (state.message == null) return;
              AppUtils.showNotification(context, state.message!);
            },
            builder: (context, state) => Expanded(
              child: state.chatPreviewList.isEmpty
                  ? Center(child: Text('No Chats Found!!'))
                  : ListView.separated(
                      itemCount: state.chatPreviewList.length,
                      separatorBuilder: (context, index) =>
                          const Divider(height: 1, indent: 80),
                      itemBuilder: (context, index) {
                        return _ChatTile(state.chatPreviewList[index]);
                      },
                    ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildSearchBar() {
    return SearchAnchor(
      searchController: searchController,
      viewBackgroundColor: Colors.black,
      viewSurfaceTintColor: Colors.transparent,
      builder: (context, controller) {
        return SearchBar(
          controller: controller,
          hintText: 'Search',
          onTap: () => controller.openView(),
          onChanged: (text) {
            controller.openView();
            chatUserSearchBloc.add(ChatUserSearchEvent.queryChanged(text));
          },
          elevation: WidgetStateProperty.all(0),
          backgroundColor: WidgetStateProperty.all(Colors.black),
          surfaceTintColor: WidgetStateProperty.all(Colors.transparent),
          overlayColor: WidgetStateProperty.all(Colors.transparent),
          shape: WidgetStateProperty.all(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
              side: BorderSide(color: Colors.grey.shade800, width: 0.5),
            ),
          ),
          padding: WidgetStateProperty.all(
            const EdgeInsets.symmetric(horizontal: 16),
          ),
          textStyle: WidgetStateProperty.all(
            const TextStyle(color: Colors.white),
          ),
          hintStyle: WidgetStateProperty.all(
            const TextStyle(color: Colors.grey),
          ),
          leading: const Icon(Icons.search, color: Colors.grey),
          trailing: [
            BlocBuilder<ChatUserSearchBloc, ChatUserSearchState>(
              bloc: chatUserSearchBloc,
              builder: (context, state) {
                if (state.isLoading) {
                  return const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: SizedBox(
                      width: 20,
                      height: 20,
                      child: CircularProgressIndicator(strokeWidth: 2),
                    ),
                  );
                }
                return IconButton(
                  icon: const Icon(Icons.clear, color: Colors.grey),
                  onPressed: () {
                    controller.clear();
                    chatUserSearchBloc.add(const ChatUserSearchEvent.cleared());
                  },
                );
              },
            ),
          ],
        );
      },
      suggestionsBuilder: (context, controller) {
        return [
          BlocBuilder<ChatUserSearchBloc, ChatUserSearchState>(
            bloc: chatUserSearchBloc,
            builder: (context, state) {
              if (state.isLoading) {
                return const Padding(
                  padding: EdgeInsets.only(top: 20),
                  child: Center(child: CircularProgressIndicator()),
                );
              }
              if (state.users.isEmpty && !state.isLoading) {
                return const ListTile(
                  title: Text(
                    'No users found',
                    style: TextStyle(color: Colors.white),
                  ),
                );
              }

              return Column(
                children: state.users.map((user) {
                  return ListTile(
                    title: Text(
                      user.username,
                      style: const TextStyle(color: Colors.white),
                    ),
                    leading: ProfileImage(
                      profileImageUrl: user.profileImageUrl,
                      isSmall: true,
                    ),
                    onTap: () {
                      controller.closeView(user.username);
                      context.push('${Routes.chatTab}/${user.uid}');
                    },
                  );
                }).toList(),
              );
            },
          ),
        ];
      },
    );
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        decoration: BoxDecoration(
          color: Colors.grey.shade900,
          borderRadius: BorderRadius.circular(12),
        ),
        child: const TextField(
          decoration: InputDecoration(
            icon: Icon(Icons.search, color: Colors.grey),
            hintText: 'Search messages',
            border: InputBorder.none,
          ),
        ),
      ),
    );
  }
}

class _ChatTile extends StatelessWidget {
  final ChatPreviewEntity chatPreview;

  const _ChatTile(this.chatPreview);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: () {
        context.push('${Routes.chatTab}/${chatPreview.user.uid}');
      },
      leading: Stack(
        children: [
          ProfileImage(
            profileImageUrl: chatPreview.user.profileImageUrl,
            isSmall: true,
            radius: 24,
          ),
          if (true) //TODO:
            Positioned(
              right: 0,
              bottom: 0,
              child: Container(
                width: 14,
                height: 14,
                decoration: BoxDecoration(
                  color: Colors.green,
                  shape: BoxShape.circle,
                  border: Border.all(
                    color: Theme.of(context).scaffoldBackgroundColor,
                    width: 2,
                  ),
                ),
              ),
            ),
        ],
      ),
      title: Text(
        chatPreview.user.username,
        style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
      ),
      subtitle: Text(
        chatPreview.lastMessage,
        maxLines: 1,
        overflow: TextOverflow.ellipsis,
        style: TextStyle(
          color: chatPreview.unreadCount > 0 ? Colors.white : Colors.grey,
          fontWeight: chatPreview.unreadCount > 0
              ? FontWeight.w600
              : FontWeight.normal,
        ),
      ),
      trailing: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Text(
            AppUtils.dateTimeToIntervalPassed(chatPreview.lastMessageTime),
            style: const TextStyle(color: Colors.grey, fontSize: 12),
          ),
          const SizedBox(height: 4),
          if (chatPreview.unreadCount > 0)
            Container(
              padding: const EdgeInsets.all(6),
              decoration: const BoxDecoration(
                color: Colors.blueAccent,
                shape: BoxShape.circle,
              ),
              child: Text(
                chatPreview.unreadCount.toString(),
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 10,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
        ],
      ),
    );
  }
}
