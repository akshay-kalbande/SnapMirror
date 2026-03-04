import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import '../../core/app_service.dart';
import '../../core/route/routes.dart';
import '../../domain/entities/user_entity.dart';
import '../../core/utils/app_utils.dart';
import '../../core/utils/dimensions.dart';
import '../bloc/auth/auth_bloc.dart';
import '../bloc/profile/profile_bloc.dart';
import '../widgets/post_image.dart';
import '../widgets/profile_image.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

enum _Status { owner, followed, notFollowed }

class _ProfilePageState extends State<ProfilePage> {
  _Status status(UserEntity user) => user.uid == AppService.instance.user.uid
      ? _Status.owner
      : AppService.instance.user.following.contains(user.uid)
      ? _Status.followed
      : _Status.notFollowed;

  String text(UserEntity user) {
    switch (status(user)) {
      case _Status.owner:
        return 'Sign Out';
      case _Status.followed:
        return 'Unfollow';
      case _Status.notFollowed:
        return 'Follow';
    }
  }

  IconData icon(UserEntity user) {
    switch (status(user)) {
      case _Status.owner:
        return Icons.edit;
      case _Status.followed:
        return Icons.person;
      case _Status.notFollowed:
        return Icons.add_box;
    }
  }

  Future<void> action(UserEntity user) async {
    switch (status(user)) {
      case _Status.owner:
        context.read<AuthBloc>().add(AuthEvent.logout());
      case _Status.followed:
        context.read<ProfileBloc>().add(ProfileEvent.unfollow(user));
      case _Status.notFollowed:
        context.read<ProfileBloc>().add(ProfileEvent.follow(user));
    }
  }

  final Color backColor = Colors.black;

  final Color textColor = Colors.white;

  final Color iconColor = Colors.white;

  final Color borderColor = Colors.white;

  final _scrollController = ScrollController();

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(_scrollListener);
  }

  void _scrollListener() {
    if (_scrollController.position.pixels >=
        _scrollController.position.maxScrollExtent * 0.9) {
      final bloc = context.read<ProfileBloc>();
      if (bloc.state.isLoading ||
          bloc.state.fetchingMore ||
          bloc.state.isLastPage) {
        return;
      }
      bloc.add(ProfileEvent.fetchMorePosts(bloc.state.user!));
    }
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<ProfileBloc, ProfileState>(
      listener: (context, state) {
        if (state.message != null) {
          AppUtils.showNotification(context, state.message!);
        } else if (state.user != null &&
            AppService.instance.user.uid != state.user!.uid) {
          context.read<OwnerProfileBloc>().add(
            ProfileEvent.updated(AppService.instance.user),
          );
        }
      },
      builder: (context, state) => state.isLoading || state.user == null
          ? const Center(child: CircularProgressIndicator())
          : Scaffold(
              appBar: AppBar(
                backgroundColor: Colors.black,
                title: Text(state.user!.username),
                actions: [
                  if (status(state.user!) == _Status.owner)
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.settings),
                    ),
                ],
              ),
              body: Column(
                children: [
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(
                          left: 16,
                          right: 16,
                          top: 8,
                        ),
                        child: Row(
                          children: [
                            ProfileImage(
                              profileImageUrl: state.user!.profileImageUrl,
                              isSmall: false,
                            ),
                            const SizedBox(width: 32),
                            Expanded(
                              flex: 1,
                              child: Column(
                                children: [
                                  Text(
                                    state.user!.totalPosts.toString(),
                                    style: const TextStyle(
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  const Text('posts'),
                                ],
                              ),
                            ),
                            Expanded(
                              flex: 1,
                              child: InkWell(
                                onTap: () => context.push(
                                  '${Routes.followers}/${state.user!.uid}',
                                ),
                                child: Column(
                                  children: [
                                    Text(
                                      state.user!.followers.length.toString(),
                                      style: const TextStyle(
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    const Text('followers'),
                                  ],
                                ),
                              ),
                            ),
                            Expanded(
                              flex: 1,
                              child: InkWell(
                                onTap: () => context.push(
                                  '${Routes.followings}/${state.user!.uid}',
                                ),
                                child: Column(
                                  children: [
                                    Text(
                                      state.user!.following.length.toString(),
                                      style: const TextStyle(
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    const Text('following'),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 16, right: 16),
                        child: Row(
                          children: [
                            SizedBox(
                              width: MediaQuery.of(context).size.width * 0.4,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(top: 8),
                                    child: Text(
                                      state.user!.username,
                                      style: const TextStyle(
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 4),
                                    child: Text(
                                      state.user!.bio,
                                      style: const TextStyle(
                                        fontStyle: FontStyle.italic,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Expanded(
                              child: Padding(
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 4,
                                ),
                                child: InkWell(
                                  onTap: () => action(state.user!),
                                  child: Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(5),
                                      color: backColor,
                                      border: Border.all(color: borderColor),
                                    ),
                                    width: double.infinity,
                                    height: 32,
                                    child: Padding(
                                      padding: const EdgeInsets.symmetric(
                                        vertical: 0,
                                        horizontal: 8,
                                      ),
                                      child: Row(
                                        children: [
                                          Expanded(
                                            child: Container(
                                              alignment: Alignment.centerRight,
                                              child: Text(
                                                text(state.user!),
                                                style: TextStyle(
                                                  color: textColor,
                                                  fontWeight: FontWeight.bold,
                                                ),
                                              ),
                                            ),
                                          ),
                                          Expanded(
                                            child: Icon(
                                              icon(state.user!),
                                              size: 20,
                                              color: iconColor,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  const Divider(color: Colors.grey, height: 20),
                  Expanded(
                    child: GridView.builder(
                      controller: _scrollController,
                      itemCount:
                          state.posts.length + (state.fetchingMore ? 1 : 0),
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount:
                            MediaQuery.sizeOf(context).width >= webScreenSize
                            ? 4
                            : 3,
                      ),
                      itemBuilder: (context, index) {
                        if (index == state.posts.length) {
                          return Center(child: CircularProgressIndicator());
                        }
                        return InkWell(
                          onTap: () => context.push(
                            '${Routes.posts}/${state.posts[index].postId}',
                          ),
                          // onTap: () {
                          //   Navigator.of(context).push(
                          //     MaterialPageRoute(
                          //       builder: (context) => ViewPostScreen(
                          //         snap: PostModel.fromEntity(
                          //           posts[index],
                          //         ).toJson(),
                          //       ),
                          //     ),
                          //   );
                          // },
                          // child: Card(
                          //   child: GridTile(
                          //     child: Image.network(
                          //       state.posts[index].imageUrl,
                          //       fit: BoxFit.cover,
                          //     ),
                          //   ),
                          // ),
                          child: Card(
                            child: GridTile(
                              child: PostImage(
                                imageUrl: state.posts[index].imageUrl,
                              ),
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
    );
  }
}
