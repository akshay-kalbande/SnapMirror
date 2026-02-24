abstract class Routes {
  static const splash = '/splash';
  static const login = '/login';
  static const register = '/register';

  static const home = '/';
  static const explore = '/explore';
  static const post = '/post';
  static const notifications = '/messages';
  static const profile = '/profile';
  static const user = '/user';
  static const followers = '/followers';
  static const followings = '/followings';
  static const posts = '/posts';
  static const comments = '/comments';

  static bool isPublicRoute(final String route) {
    return [splash, login, register].contains(route);
  }

  static bool hideBottomNav(final String route) =>
      ![home, explore, post, notifications, profile].contains(route);
}
