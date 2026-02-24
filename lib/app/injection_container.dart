import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/foundation.dart';
import 'package:get_it/get_it.dart';

import '../core/app_service.dart';
import '../core/route/app_router.dart';
import '../data/data_sources/remote_data_sources/auth_remote_data_source.dart';
import '../data/data_sources/remote_data_sources/comments_remote_data_source.dart';
import '../data/data_sources/remote_data_sources/fetch_page_remote_data_source.dart';
import '../data/data_sources/remote_data_sources/file_remote_data_source.dart';
import '../data/data_sources/remote_data_sources/follow_remote_data_source.dart';
import '../data/data_sources/remote_data_sources/post_remote_data_source.dart';
import '../data/data_sources/remote_data_sources/user_remote_data_source.dart';
import '../data/repositories/auth_repository_impl.dart';
import '../data/repositories/comments_repository_impl.dart';
import '../data/repositories/follow_repository_impl.dart';
import '../data/repositories/post_repository_impl.dart';
import '../data/repositories/user_repository_impl.dart';
import '../domain/repositories/auth_repository.dart';
import '../domain/repositories/comments_repository.dart';
import '../domain/repositories/follow_repository.dart';
import '../domain/repositories/post_repository.dart';
import '../domain/repositories/user_repository.dart';
import '../domain/usecases/follow_user.dart';
import '../domain/usecases/get_all_followers_of_user.dart';
import '../domain/usecases/get_all_followings_of_user.dart';
import '../domain/usecases/get_comment_usecase.dart';
import '../domain/usecases/get_comments_usecase.dart';
import '../domain/usecases/get_explore_feed_usecase.dart';
import '../domain/usecases/get_following_feed_usecase.dart';
import '../domain/usecases/get_post_feed_subscription_usecase.dart';
import '../domain/usecases/get_post_usecase.dart';
import '../domain/usecases/get_posts_of_user.dart';
import '../domain/usecases/get_user_usecase.dart';
import '../domain/usecases/login_user_usecase.dart';
import '../domain/usecases/logout_user_usecase.dart';
import '../domain/usecases/post_comment_usecase.dart';
import '../domain/usecases/register_user_usecase.dart';
import '../domain/usecases/remove_user_from_follower.dart';
import '../domain/usecases/search_user_usecase.dart';
import '../domain/usecases/toggle_comment_like_usecase.dart';
import '../domain/usecases/toggle_post_usecase.dart';
import '../domain/usecases/unfollow_user.dart';
import '../domain/usecases/update_post_usecase.dart';
import '../domain/usecases/upload_post_usecase.dart';
import '../presentation/bloc/auth/auth_bloc.dart';

final sl = GetIt.instance;

void init() {
  sl.registerSingleton<FirebaseAuth>(FirebaseAuth.instance);
  sl.registerSingleton<FirebaseFirestore>(FirebaseFirestore.instance);
  sl.registerSingleton<FirebaseStorage>(FirebaseStorage.instance);
  sl.registerSingleton<AppService>(AppService.instance);
  sl.registerSingleton<AuthRemoteDataSource>(
    AuthRemoteDataSourceImpl(sl<FirebaseAuth>(), sl<FirebaseFirestore>()),
  );
  sl.registerSingleton<AuthRepository>(
    AuthRepositoryImpl(sl<AuthRemoteDataSource>()),
  );
  sl.registerSingleton<GetUserUsecase>(
    GetUserUsecase(sl<AuthRepository>(), (Platform.isWindows && !kIsWeb)),
  );
  sl.registerSingleton<LoginUserUsecase>(
    LoginUserUsecase(sl<AuthRepository>()),
  );
  sl.registerSingleton<LogoutUserUsecase>(
    LogoutUserUsecase(sl<AuthRepository>()),
  );
  sl.registerSingleton<AuthBloc>(
    AuthBloc(
      sl<GetUserUsecase>(),
      sl<LoginUserUsecase>(),
      sl<LogoutUserUsecase>(),
    ),
  );
  sl.registerSingleton<AppRouter>(AppRouter(sl<AuthBloc>()));

  sl.registerSingleton<FetchPageRemoteDataSource>(
    FetchPageRemoteDataSourceImpl(sl()),
  );

  sl.registerLazySingleton<PostRemoteDataSource>(
    () => PostRemoteDataSourceImpl(
      fetchPageRemoteDataSource: sl(),
      firestore: sl(),
    ),
  );

  sl.registerFactory<SearchUserUsecase>(() => SearchUserUsecase(sl()));
  sl.registerFactory<RegisterUserUsecase>(
    () => RegisterUserUsecase(authRepository: sl(), userRepository: sl()),
  );
  sl.registerLazySingleton<UserRepository>(
    () => UserRepositoryImpl(dataSource: sl(), fileRemoteDataSource: sl()),
  );
  sl.registerLazySingleton<UserRemoteDataSource>(
    () => UserRemoteDataSourceImpl(sl()),
  );

  sl.registerFactory<GetPostUsecase>(() => GetPostUsecase(sl()));
  sl.registerFactory<TogglePostLikeUsecase>(() => TogglePostLikeUsecase(sl()));
  sl.registerFactory<UpdatePostUsecase>(() => UpdatePostUsecase(sl()));
  sl.registerSingleton<FileRemoteDataSource>(FileRemoteDataSourceImpl(sl()));

  sl.registerSingleton<PostRepository>(
    PostRepositoryImpl(postRemoteDataSource: sl(), fileRemoteDataSource: sl()),
  );

  sl.registerFactory<GetPostFeedSubscriptionUsecase>(
    () => GetPostFeedSubscriptionUsecase(sl()),
  );

  sl.registerFactory<UploadPostUsecase>(() => UploadPostUsecase(sl()));

  sl.registerFactory<GetFollowingFeedUsecase>(
    () => GetFollowingFeedUsecase(sl()),
  );
  sl.registerFactory<GetExploreFeedUsecase>(() => GetExploreFeedUsecase(sl()));

  sl.registerFactory<GetPostsOfUser>(
    () => GetPostsOfUser(sl<PostRepository>()),
  );

  sl.registerSingleton<CommentsRemoteDataSource>(
    CommentsRemoteDataSourceImpl(
      firestore: sl(),
      fetchPageRemoteDataSource: sl(),
    ),
  );

  sl.registerSingleton<CommentsRepository>(CommentsRepositoryImpl(sl()));
  sl.registerFactory<GetCommentsUsecase>(() => GetCommentsUsecase(sl()));
  sl.registerFactory<GetCommentUsecase>(() => GetCommentUsecase(sl()));
  sl.registerFactory<ToggleCommentLikeUsecase>(
    () => ToggleCommentLikeUsecase(sl()),
  );
  sl.registerFactory<PostCommentUsecase>(
    () => PostCommentUsecase(repository: sl()),
  );

  ////
  sl.registerLazySingleton<FollowRemoteDataSource>(
    () => FollowRemoteDataSourceImpl(sl()),
  );
  sl.registerLazySingleton<FollowRepository>(
    () => FollowRepositoryImpl(sl<FollowRemoteDataSource>()),
  );
  sl.registerLazySingleton<GetAllFollowersOfUser>(
    () => GetAllFollowersOfUser(sl<FollowRepository>()),
  );
  sl.registerLazySingleton<RemoveUserFromFollower>(
    () => RemoveUserFromFollower(sl<FollowRepository>()),
  );
  sl.registerLazySingleton<GetAllFollowingsOfUser>(
    () => GetAllFollowingsOfUser(sl<FollowRepository>()),
  );
  sl.registerLazySingleton<UnfollowUser>(
    () => UnfollowUser(sl<FollowRepository>()),
  );
  sl.registerLazySingleton<FollowUser>(
    () => FollowUser(sl<FollowRepository>()),
  );
}
