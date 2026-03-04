import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../core/route/app_router.dart';
import '../core/theme/app_colors.dart';
import '../presentation/bloc/auth/auth_bloc.dart';
import '../presentation/bloc/profile/profile_bloc.dart';
import '../presentation/bloc/upload/upload_bloc.dart';
import 'injection_container.dart';

class SnapMirror extends StatelessWidget {
  SnapMirror({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => sl<AuthBloc>()),
        BlocProvider(
          create: (context) => UploadBloc(sl())..add(UploadEvent.started()),
        ),
        BlocProvider<ProfileBloc>(
          create: (context) => OwnerProfileBloc(
            getUserUsecase: sl(),
            followUser: sl(),
            getPostsOfUser: sl(),
            unfollowUser: sl(),
          ),
        ),
      ],
      child: BlocConsumer<AuthBloc, AuthState>(
        listener: (context, state) {},
        builder: (context, state) {
          bool isLoading = state.when(
            authenticated: (user, authLoading) => authLoading,
            unauthenticated: (loading, error) => loading,
            initial: () => false,
          );
          return Directionality(
            textDirection: TextDirection.ltr,
            child: Stack(
              children: [
                MaterialApp.router(
                  debugShowCheckedModeBanner: false,
                  title: 'SnapMirror',
                  theme: ThemeData.dark().copyWith(
                    scaffoldBackgroundColor: AppColors.mobileBackgroundColor,
                  ),
                  routerConfig: sl<AppRouter>().router,

                  // routerConfig: AppRouter(sl()).router,
                  // routerDelegate: appRouter.router.routerDelegate,
                  // routeInformationParser:
                  //     appRouter.router.routeInformationParser,
                ),
                if (isLoading) ...[
                  ModalBarrier(dismissible: false, color: Colors.black38),
                  Center(child: const CircularProgressIndicator()),
                ],
              ],
            ),
          );
        },
      ),
    );
  }
}
