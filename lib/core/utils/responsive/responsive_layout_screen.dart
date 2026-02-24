// import 'package:flutter/material.dart';
// import 'package:provider/provider.dart';
//
// import '../../providers/user_provider.dart';
// import '../dimensions.dart';
//
// class ResponsiveLayout extends StatefulWidget {
//   final Widget mobileScreenLayout;
//   final Widget webScreenLayout;
//   const ResponsiveLayout({
//     super.key,
//     required this.mobileScreenLayout,
//     required this.webScreenLayout,
//   });
//
//   @override
//   State<ResponsiveLayout> createState() => _ResponsiveLayoutState();
// }
//
// class _ResponsiveLayoutState extends State<ResponsiveLayout> {
//   @override
//   void initState() {
//     // TODO: implement initState
//     super.initState();
//     addData();
//   }
//
//   void addData() async {
//     UserProvider userProvider = Provider.of(context, listen: false);
//     await userProvider.refreshUser();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return LayoutBuilder(
//       builder: (context, constraint) {
//         if (constraint.maxWidth > webScreenSize) {
//           return widget.webScreenLayout;
//         } else {
//           return widget.mobileScreenLayout;
//         }
//       },
//     );
//   }
// }
