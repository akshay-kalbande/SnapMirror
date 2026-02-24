import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:path_provider/path_provider.dart';
import 'app/app.dart';
import 'app/app_bloc_observer.dart';
import 'firebase_options.dart';
import 'app/injection_container.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  Bloc.observer = AppBlocObserver();
  HydratedBloc.storage = await HydratedStorage.build(
    storageDirectory: kIsWeb
        ? HydratedStorageDirectory.web
        : HydratedStorageDirectory((await getTemporaryDirectory()).path),
  );
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  init();
  runApp(SnapMirror());
}

// void main() async {
//   WidgetsFlutterBinding.ensureInitialized();
//   Bloc.observer = AppBlocObserver();
//   HydratedBloc.storage = await HydratedStorage.build(
//     storageDirectory: kIsWeb
//         ? HydratedStorageDirectory.web
//         : HydratedStorageDirectory((await getTemporaryDirectory()).path),
//   );
//
//   await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
//
//   // if (kIsWeb) {
//   //   await Firebase.initializeApp(
//   //     options: const FirebaseOptions(
//   //       apiKey: 'AIzaSyBwpNydEh8HfjWbvOkP2ntbguuXB3xjvcs',
//   //       appId: '1:858838546933:web:6d4407fc3f16a61fb048bc',
//   //       messagingSenderId: '858838546933',
//   //       projectId: 'instagramclone-bbbee',
//   //       storageBucket: 'instagramclone-bbbee.appspot.com',
//   //     ),
//   //   );
//   // } else {
//   //   await Firebase.initializeApp();
//   // }
//   init();
//
//   // runApp(const MyApp());
//   runApp(SnapMirror());
// }
//
// class MyApp extends StatelessWidget {
//   const MyApp({super.key});
//   @override
//   Widget build(BuildContext context) {
//     return MultiProvider(
//       providers: [ChangeNotifierProvider(create: (_) => UserProvider())],
//       child: MaterialApp(
//         debugShowCheckedModeBanner: false,
//         title: 'Instagram Clone',
//         theme: ThemeData.dark().copyWith(
//           scaffoldBackgroundColor: mobileBackgroundColor,
//         ),
//         home: StreamBuilder(
//           stream: FirebaseAuth.instance.authStateChanges(),
//           builder: (context, snapshot) {
//             if (snapshot.connectionState == ConnectionState.waiting) {
//               return const Center(
//                 child: CircularProgressIndicator(color: Colors.white),
//               );
//             }
//             if (snapshot.connectionState == ConnectionState.active) {
//               if (snapshot.hasData) {
//                 return const ResponsiveLayout(
//                   mobileScreenLayout: MobileScreenLayout(),
//                   webScreenLayout: WebScreenLayout(),
//                 );
//               } else if (snapshot.hasError) {
//                 return Center(child: Text(snapshot.error.toString()));
//               }
//             }
//
//             return const LoginScreen();
//           },
//         ),
//       ),
//     );
//   }
// }
