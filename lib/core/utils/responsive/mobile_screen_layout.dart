// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import '../../app/injection_container.dart';
// import '../../data/models/user_model.dart';
// import '../../domain/usecases/get_posts_of_user.dart';
// import '../../models/user.dart' as models;
// import '../../presentation/bloc/profile/profile_bloc.dart';
// import '../../presentation/pages/profile_page.dart';
// import '../../providers/user_provider.dart';
// import '../../screens/add_post_screen.dart';
// import '../../screens/feed_screen.dart';
// import '../../screens/search_screen.dart';
// import '../colors.dart';
// import 'package:provider/provider.dart';
//
// class MobileScreenLayout extends StatefulWidget {
//   const MobileScreenLayout({super.key});
//
//   @override
//   State<MobileScreenLayout> createState() => _MobileScreenLayoutState();
// }
//
// class _MobileScreenLayoutState extends State<MobileScreenLayout> {
//   late PageController _pageController;
//
//   @override
//   void initState() {
//     // TODO: implement initState
//     super.initState();
//     _pageController = PageController();
//   }
//
//   @override
//   void dispose() {
//     // TODO: implement dispose
//     super.dispose();
//     _pageController.dispose();
//   }
//
//   int _page = 0;
//   void navigationTapped(int page) {
//     _pageController.jumpToPage(page);
//   }
//
//   void onPageChanged(int page) {
//     setState(() {
//       _page = page;
//     });
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     // UserProvider _userProvider=Provider.of(context,listen: false);
//     // _userProvider.refreshUser();
//
//     models.User? user = Provider.of<UserProvider>(context).getUser;
//
//     return Scaffold(
//       body: PageView(
//         physics: const NeverScrollableScrollPhysics(),
//         controller: _pageController,
//         onPageChanged: onPageChanged,
//         children: [
//           const FeedScreen(),
//           const SearchScreen(),
//           const AddPostScreen(),
//           const Center(child: Text('messages')),
//           if (user != null)
//             BlocProvider<OwnerProfileBloc>(
//               create: (context) =>
//                   OwnerProfileBloc(
//                     getUserUsecase: sl(),
//                     followUser: sl(),
//                     getPostsOfUser: sl(),
//                     unfollowUser: sl(),
//                   )..add(
//                     ProfileEvent.started(
//                       UserModel.fromJson(user.toJson()).entity,
//                     ),
//                   ),
//               child: ProfilePage(),
//             ),
//         ],
//       ),
//       bottomNavigationBar: CupertinoTabBar(
//         //activeColor: Colors.white,
//         backgroundColor: mobileBackgroundColor,
//         items: [
//           BottomNavigationBarItem(
//             icon: _page == 0
//                 ? const Icon(Icons.home, color: Colors.white)
//                 : const Icon(Icons.home_outlined, color: Colors.white),
//             label: '',
//             backgroundColor: Colors.white,
//           ),
//           BottomNavigationBarItem(
//             icon: _page == 1
//                 ? const Icon(Icons.search, color: Colors.white, size: 33)
//                 : const Icon(Icons.search, color: Colors.white),
//             label: '',
//             backgroundColor: Colors.white,
//           ),
//           BottomNavigationBarItem(
//             icon: _page == 2
//                 ? const Icon(Icons.add_a_photo, color: Colors.white)
//                 : const Icon(Icons.add_a_photo_outlined, color: Colors.white),
//             label: '',
//             backgroundColor: Colors.white,
//           ),
//           BottomNavigationBarItem(
//             icon: _page == 3
//                 ? const Icon(Icons.favorite, color: Colors.white)
//                 : const Icon(Icons.favorite_border, color: Colors.white),
//             label: '',
//             backgroundColor: Colors.white,
//           ),
//           BottomNavigationBarItem(
//             icon: _page == 4
//                 ? const Icon(Icons.person, color: Colors.white)
//                 : const Icon(Icons.person_outline, color: Colors.white),
//             label: '',
//             backgroundColor: Colors.white,
//           ),
//         ],
//         onTap: navigationTapped,
//       ),
//     );
//   }
// }
