import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../core/app_service.dart';
import '../../core/route/routes.dart';
import '../../core//utils/app_utils.dart';
import '../bloc/following_list/following_list_bloc.dart';

class FollowingsListPage extends StatelessWidget {
  final String username;
  const FollowingsListPage({super.key, required this.username});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text(username),
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.settings)),
        ],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Text('Following', style: TextStyle(fontSize: 20)),
          ),
          const SizedBox(height: 10),
          Expanded(
            child: BlocConsumer<FollowingListBloc, FollowingListState>(
              listener: (context, state) {
                if (state.notification != null) {
                  AppUtils.showNotification(context, state.notification!);
                }
              },
              builder: (context, state) => state.isLoading
                  ? const Center(child: CircularProgressIndicator())
                  : state.followings.isEmpty
                  ? Center(
                      child: Column(
                        children: [
                          Text('No following found!'),
                          const SizedBox(height: 10),
                          TextButton(
                            onPressed: () {},
                            child: Text('Start Following 👉'),
                          ),
                        ],
                      ),
                    )
                  : ListView.builder(
                      itemCount: state.followings.length,
                      itemBuilder: (context, index) {
                        return ListTile(
                          onTap: () => context.push(
                            '${Routes.user}/${state.followings[index].uid}',
                            // extra: {'user': following[index]},
                          ),
                          leading: CircleAvatar(
                            backgroundImage: NetworkImage(
                              state.followings[index].profileImageUrl,
                            ),
                          ),
                          trailing:
                              state.user!.uid != AppService.instance.user.uid
                              ? null
                              : TextButton(
                                  onPressed: () =>
                                      context.read<FollowingListBloc>().add(
                                        FollowingListEvent.unfollowButtonClicked(
                                          state.user!,
                                          state.followings[index],
                                        ),
                                      ),
                                  style: ButtonStyle(
                                    backgroundColor: WidgetStatePropertyAll(
                                      Colors.blueGrey,
                                    ),
                                  ),
                                  child: Text('Unfollow'),
                                ),
                          title: Text(state.followings[index].username),
                          subtitle: Text(state.followings[index].email),
                        );
                      },
                    ),
            ),
          ),
        ],
      ),
    );
  }
}
