import 'dart:async';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import '../../app/injection_container.dart';
import '../../common/main_scaffold.dart';
import '../../domain/entities/user_entity.dart';
import '../../domain/repositories/user_repository.dart';
import '../../presentation/bloc/auth/auth_bloc.dart';
import '../../presentation/bloc/chat_preview_list/chat_preview_list_bloc.dart';
import '../../presentation/bloc/chat_user_search/chat_user_search_bloc.dart';
import '../../presentation/bloc/comments/comments_bloc.dart';
import '../../presentation/bloc/edit_profile/edit_profile_bloc.dart';
import '../../presentation/bloc/explore_feed/explore_feed_bloc.dart';
import '../../presentation/bloc/followers_list/followers_list_bloc.dart';
import '../../presentation/bloc/following_feed/following_feed_bloc.dart';
import '../../presentation/bloc/following_list/following_list_bloc.dart';
import '../../presentation/bloc/post/post_card_bloc.dart';
import '../../presentation/bloc/profile/profile_bloc.dart';
import '../../presentation/bloc/register/register_bloc.dart';
import '../../presentation/bloc/search/search_bloc.dart';
import '../../presentation/bloc/upload_post/upload_post_bloc.dart';
import '../../presentation/bloc/user_chat/user_chat_bloc.dart';
import '../../presentation/pages/chat_preview_list_page.dart';
import '../../presentation/pages/chat_page.dart';
import '../../presentation/pages/upload_post_page.dart';
import '../../presentation/pages/comments_page.dart';
import '../../presentation/pages/explore_feed_page.dart';
import '../../presentation/pages/followers_list_page.dart';
import '../../presentation/pages/following_list_page.dart';
import '../../presentation/pages/login_page.dart';
import '../../presentation/pages/following_feed_page.dart';
import '../../presentation/pages/post_page.dart';
import '../../presentation/pages/profile_page.dart';
import '../../presentation/pages/register_page.dart';
import '../../presentation/pages/splash_page.dart';
import '../../presentation/pages/settings_page.dart';
import '../../presentation/pages/edit_profile_page.dart';
import '../app_service.dart';
import 'routes.dart';

class AppRouter extends ChangeNotifier {
  final AuthBloc _authBloc;
  late final GoRouter router;
  AppRouter(this._authBloc) {
    router = GoRouter(
      navigatorKey: AppService.instance.rootNavigator,
      initialLocation: Routes.splash,
      debugLogDiagnostics: true,
      refreshListenable: AppRouterListenable.listenable([_authBloc.stream]),
      redirect: _onRedirect,
      routes: [
        GoRoute(
          path: Routes.splash,
          name: 'splash',
          pageBuilder: (context, state) => _buildPageWithDefaultTransition(
            context: context,
            state: state,
            child: SplashPage(),
          ),
        ),
        GoRoute(
          path: Routes.login,
          name: 'login',
          pageBuilder: (context, state) => _buildPageWithDefaultTransition(
            context: context,
            state: state,
            child: LoginPage(),
          ),
        ),
        GoRoute(
          path: Routes.register,
          name: 'register',
          pageBuilder: (context, state) => _buildPageWithDefaultTransition(
            context: context,
            state: state,
            child: BlocProvider<RegisterBloc>(
              create: (context) => RegisterBloc(sl()),
              child: RegisterPage(),
            ),
          ),
        ),
        StatefulShellRoute.indexedStack(
          builder: (context, state, navigationShell) => MainScaffold(
            navigationShell: navigationShell,
            path: state.matchedLocation,
          ),
          branches: [
            StatefulShellBranch(
              routes: [
                GoRoute(
                  path: Routes.home,
                  name: 'home',
                  pageBuilder: (context, state) {
                    return _buildPageWithDefaultTransition(
                      context: context,
                      state: state,
                      child: BlocProvider<FollowingFeedBloc>(
                        create: (context) => FollowingFeedBloc(
                          sl(),
                          user: AppService.instance.user,
                        )..add(FollowingFeedEvent.started()),
                        child: FollowingFeedPage(),
                      ),
                    );
                  },
                ),
                // GoRoute(
                //   path: Routes.home,
                //   name: 'home',
                //   pageBuilder: (context, state) => _buildPageWithDefaultTransition(
                //     context: context,
                //     state: state,
                //     child: const ResponsiveLayout(
                //       mobileScreenLayout: MobileScreenLayout(),
                //       webScreenLayout: WebScreenLayout(),
                //     ),
                //   ),
                // ),
              ],
            ),
            StatefulShellBranch(
              routes: [
                GoRoute(
                  path: Routes.explore,
                  name: 'explore',
                  pageBuilder: (context, state) =>
                      _buildPageWithDefaultTransition(
                        context: context,
                        state: state,
                        child: MultiBlocProvider(
                          providers: [
                            BlocProvider(
                              create: (context) =>
                                  ExploreFeedBloc(sl())
                                    ..add(ExploreFeedEvent.started()),
                            ),
                            BlocProvider(create: (context) => SearchBloc(sl())),
                          ],
                          child: ExploreFeedPage(),
                        ),
                      ),
                ),
              ],
            ),
            StatefulShellBranch(
              routes: [
                GoRoute(
                  path: Routes.chatTab,
                  name: 'chatTab',
                  pageBuilder: (context, state) =>
                      _buildPageWithDefaultTransition(
                        context: context,
                        state: state,
                        child: MultiBlocProvider(
                          providers: [
                            BlocProvider(
                              create: (context) => ChatPreviewListBloc(
                                getChatPreviewListUsecase: sl(),
                                getPreviewMessageStreamUsecase: sl(),
                              )..add(ChatPreviewListEvent.started()),
                            ),
                            BlocProvider(
                              create: (context) => ChatUserSearchBloc(sl()),
                            ),
                          ],
                          child: const ChatPreviewListPage(),
                        ),
                      ),
                  routes: [
                    GoRoute(
                      path: ':userId',
                      name: 'chat',
                      pageBuilder: (context, state) {
                        late UserEntity user;
                        sl<UserRepository>()
                            .getUserSync(state.pathParameters['userId']!)
                            .fold((l) => throw Exception(l), (r) => user = r);
                        return _buildPageWithDefaultTransition(
                          context: context,
                          state: state,
                          child: BlocProvider(
                            create: (context) => UserChatBloc(
                              getUserChatsUsecase: sl(),
                              user: user,
                              sendMessageUsecase: sl(),
                              getChatStreamUsecase: sl(),
                              clearUnreadCountUsecase: sl(),
                              markAllMessagesAsReadUsecase: sl(),
                            )..add(UserChatEvent.started()),
                            child: const ChatPage(),
                          ),
                        );
                      },
                    ),
                  ],
                ),
              ],
            ),
            StatefulShellBranch(
              routes: [
                GoRoute(
                  path: Routes.post,
                  name: 'post',
                  pageBuilder: (context, state) =>
                      _buildPageWithDefaultTransition(
                        context: context,
                        state: state,
                        child: BlocProvider<UploadPostBloc>(
                          create: (context) => UploadPostBloc(sl()),
                          child: UploadPostPage(),
                        ),
                      ),
                ),
              ],
            ),

            // StatefulShellBranch(
            //   routes: [
            //     GoRoute(
            //       path: Routes.notifications,
            //       name: 'Notifications',
            //       pageBuilder: (context, state) =>
            //           _buildPageWithDefaultTransition(
            //             context: context,
            //             state: state,
            //             child: NotificationsPage(),
            //           ),
            //     ),
            //   ],
            // ),
            StatefulShellBranch(
              routes: [
                GoRoute(
                  path: Routes.profile,
                  name: 'profile',
                  pageBuilder: (context, state) {
                    UserEntity? user;
                    _authBloc.state.whenOrNull(
                      authenticated: (u, authLoading) => user = u,
                    );
                    if (user != null) {
                      context.read<ProfileBloc>().add(
                        ProfileEvent.started(user!),
                      );
                    }
                    return _buildPageWithDefaultTransition(
                      context: context,
                      state: state,
                      child: ProfilePage(),
                    );
                  },
                ),
              ],
            ),
          ],
        ),
        GoRoute(
          path: '${Routes.followers}/:userID',
          name: 'followers',
          pageBuilder: (context, state) => _buildPageWithDefaultTransition(
            context: context,
            state: state,
            child: BlocProvider<FollowersListBloc>(
              create: (context) =>
                  FollowersListBloc(
                    getAllFollowersOfUser: sl(),
                    removeUserFromFollower: sl(),
                    getUserUsecase: sl(),
                  )..add(
                    FollowersListEvent.startedWithUserID(
                      state.pathParameters['userID']!,
                    ),
                  ),
              child: FollowersListPage(
                username: state.pathParameters['userID']!,
              ),
            ),
          ),
        ),
        GoRoute(
          path: '${Routes.followings}/:userID',
          name: 'followings',
          pageBuilder: (context, state) => _buildPageWithDefaultTransition(
            context: context,
            state: state,
            child: BlocProvider<FollowingListBloc>(
              create: (context) =>
                  FollowingListBloc(
                    getAllFollowingsOfUser: sl(),
                    getUserUsecase: sl(),
                    unfollowUser: sl(),
                  )..add(
                    FollowingListEvent.startedWithUserID(
                      state.pathParameters['userID']!,
                    ),
                  ),
              child: FollowingsListPage(
                username: state.pathParameters['userID']!,
              ),
            ),
          ),
        ),
        GoRoute(
          path: '${Routes.user}/:userID',
          name: 'user',
          pageBuilder: (context, state) {
            return _buildPageWithDefaultTransition(
              context: context,
              state: state,
              child: BlocProvider<OwnerProfileBloc>.value(
                value: context.read<ProfileBloc>() as OwnerProfileBloc,
                child: BlocProvider<ProfileBloc>(
                  create: (context) =>
                      UserProfileBloc(
                        getUserUsecase: sl(),
                        followUser: sl(),
                        getPostsOfUser: sl(),
                        unfollowUser: sl(),
                      )..add(
                        ProfileEvent.startedWithUserID(
                          state.pathParameters['userID']!,
                        ),
                        // ProfileEvent.started(
                        //   (state.extra as Map)['user'] as UserEntity,
                        // ),
                      ),
                  child: ProfilePage(),
                ),
              ),
            );
          },
        ),
        GoRoute(
          path: '${Routes.posts}/:postID',
          name: 'posts',
          pageBuilder: (context, state) {
            return _buildPageWithDefaultTransition(
              context: context,
              state: state,
              child: BlocProvider<PostCardBloc>(
                create: (context) => PostCardBloc(
                  postID: state.pathParameters['postID']!,
                  postFeedSubscriptionUsecase: sl(),
                  getPostUsecase: sl(),
                  updatePostUsecase: sl(),
                  togglePostUsecase: sl(),
                  bookmarkPostUsecase: sl(),
                  removePostFromBookmarkUsecase: sl(),
                ),
                child: PostPage(),
              ),
            );
          },
        ),
        GoRoute(
          path: '${Routes.comments}/:postID',
          name: 'comments',
          pageBuilder: (context, state) {
            return _buildPageWithDefaultTransition(
              context: context,
              state: state,
              child: BlocProvider<CommentsBloc>(
                create: (context) => CommentsBloc(
                  postID: state.pathParameters['postID']!,
                  getCommentsUsecase: sl(),
                  postCommentUsecase: sl(),
                )..add(CommentsEvent.started()),
                child: CommentsPage(),
              ),
            );
          },
        ),
        GoRoute(
          path: Routes.settings,
          name: 'settings',
          pageBuilder: (context, state) => _buildPageWithDefaultTransition(
            context: context,
            state: state,
            child: const SettingsPage(),
          ),
        ),
        GoRoute(
          path: Routes.editProfile,
          name: 'editProfile',
          pageBuilder: (context, state) => _buildPageWithDefaultTransition(
            context: context,
            state: state,
            child: BlocProvider<EditProfileBloc>(
              create: (context) => EditProfileBloc(sl()),
              child: const EditProfilePage(),
            ),
          ),
        ),
        // GoRoute(
        //   path: Routes.chatList,
        //   name: 'chatList',
        //   pageBuilder: (context, state) => _buildPageWithDefaultTransition(
        //     context: context,
        //     state: state,
        //     child: BlocProvider(
        //       create: (context) => ChatPreviewListBloc(
        //         getChatPreviewListUsecase: sl(),
        //         getPreviewMessageStreamUsecase: sl(),
        //       )..add(ChatPreviewListEvent.started()),
        //       child: const ChatPreviewListPage(),
        //     ),
        //   ),
        // ),

        // GoRoute(
        //   path: '${Routes.chat}/:userId',
        //   name: 'chat',
        //   pageBuilder: (context, state) {
        //     late UserEntity user;
        //     sl<UserRepository>()
        //         .getUserSync(state.pathParameters['userId']!)
        //         .fold((l) => throw Exception(l), (r) => user = r);
        //     return _buildPageWithDefaultTransition(
        //       context: context,
        //       state: state,
        //       child: BlocProvider(
        //         create: (context) => UserChatBloc(
        //           getUserChatsUsecase: sl(),
        //           user: user,
        //           sendMessageUsecase: sl(),
        //           getChatStreamUsecase: sl(),
        //           clearUnreadCountUsecase: sl(),
        //           markAllMessagesAsReadUsecase: sl(),
        //         )..add(UserChatEvent.started()),
        //         child: const ChatPage(),
        //       ),
        //     );
        //   },
        // ),
      ],
    );
  }

  Page<dynamic> _buildPageWithDefaultTransition({
    required final BuildContext context,
    required final GoRouterState state,
    required final Widget child,
  }) => CustomTransitionPage(
    key: state.pageKey,
    child: child,
    transitionsBuilder: (context, animation, secondaryAnimation, child) =>
        FadeTransition(
          opacity: CurveTween(curve: Curves.easeIn).animate(animation),
          child: child,
        ),
  );

  FutureOr<String?> _onRedirect(
    BuildContext context,
    GoRouterState state,
  ) async {
    print('--------------- onRedirect ----------------');
    print('Path: ${state.path}');
    print('Location: ${state.matchedLocation}');
    bool loggedIn = false;
    bool isSplash = false;
    _authBloc.state.whenOrNull(
      authenticated: (user, authLoading) => loggedIn = true,
      initial: () => isSplash = true,
    );
    if (isSplash) return Routes.splash;
    if (state.matchedLocation == '/splash') {
      if (!AppService.instance.initialSplashShown) return null;
      return loggedIn ? Routes.home : Routes.login;
    }
    if (!loggedIn && !Routes.isPublicRoute(state.matchedLocation)) {
      return Routes.login;
    }
    if (loggedIn && Routes.isPublicRoute(state.matchedLocation)) {
      return Routes.home;
    }
    return null;
  }
}

class AppRouterListenable extends ChangeNotifier {
  AppRouterListenable._();
  static AppRouterListenable? _instance;
  static AppRouterListenable get instance {
    if (_instance == null) throw Exception('can\'t access uninitialized value');
    return _instance!;
  }

  static void notify() {
    _instance?._notify();
  }

  void _notify() {
    notifyListeners();
  }

  final List<StreamSubscription> subscriptions = [];
  static AppRouterListenable listenable(final List<Stream<dynamic>> streams) {
    // if (_instance != null) throw Exception('already initialized');
    _instance = AppRouterListenable._();
    for (final stream in streams) {
      _instance!.subscriptions.add(
        stream.asBroadcastStream().listen((event) => notify()),
      );
    }
    return _instance!;
  }

  @override
  void dispose() {
    super.dispose();
    for (final subscription in subscriptions) {
      subscription.cancel();
    }
  }
}
