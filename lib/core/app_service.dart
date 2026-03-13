import 'package:flutter/cupertino.dart';

import '../domain/entities/user_entity.dart';

class AppService {
  AppService._();

  static final AppService _instance = AppService._();

  static AppService get instance => _instance;

  final GlobalKey<NavigatorState> rootNavigator = GlobalKey<NavigatorState>();

  late UserEntity user;
  List<String> savedPosts = [];

  bool initialSplashShown = false;

  void setSavedPosts(final List<String> posts) {
    savedPosts = posts;
  }

  void addToSavedPosts(final List<String> posts) {
    savedPosts.addAll(posts);
  }

  void unsavePost(final String post) {
    savedPosts.removeWhere((element) => element == post);
  }

  void clearSavedPosts() {
    savedPosts.clear();
  }

  bool postBookmarked(final String postID) {
    return savedPosts.contains(postID);
  }
}
