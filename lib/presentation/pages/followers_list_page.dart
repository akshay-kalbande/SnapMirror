import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../core/app_service.dart';
import '../../core/route/routes.dart';
import '../../core//utils/app_utils.dart';
import '../bloc/followers_list/followers_list_bloc.dart';

class FollowersListPage extends StatelessWidget {
  final String username;
  const FollowersListPage({super.key, required this.username});

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
            child: Text('Followers', style: TextStyle(fontSize: 20)),
          ),
          const SizedBox(height: 10),
          Expanded(
            child: BlocConsumer<FollowersListBloc, FollowersListState>(
              listener: (context, state) {
                if (state.notification != null) {
                  AppUtils.showNotification(context, state.notification!);
                }
              },
              // buildWhen: (previous, current) => true,
              builder: (context, state) => state.isLoading
                  ? const Center(child: CircularProgressIndicator())
                  : state.followers.isEmpty
                  ? Center(child: Text('No followers found!'))
                  : ListView.builder(
                      itemCount: state.followers.length,
                      itemBuilder: (context, index) {
                        return ListTile(
                          onTap: () => context.push(
                            '${Routes.user}/${state.followers[index].uid}',
                            // extra: {'user': followers[index]},
                          ),
                          leading: CircleAvatar(
                            backgroundImage: NetworkImage(
                              state.followers[index].profileImageUrl,
                            ),
                          ),
                          trailing:
                              state.user!.uid != AppService.instance.user.uid
                              ? null
                              : TextButton(
                                  onPressed: () =>
                                      context.read<FollowersListBloc>().add(
                                        FollowersListEvent.removeFollowerClicked(
                                          state.user!,
                                          state.followers[index],
                                        ),
                                      ),
                                  style: ButtonStyle(
                                    backgroundColor: WidgetStatePropertyAll(
                                      Colors.blueGrey,
                                    ),
                                  ),
                                  child: Text('Remove'),
                                ),
                          title: Text(state.followers[index].username),
                          subtitle: Text(state.followers[index].email),
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
