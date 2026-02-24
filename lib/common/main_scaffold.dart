import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../core/route/routes.dart';
import '../core/theme/app_colors.dart';

class MainScaffold extends StatelessWidget {
  final StatefulNavigationShell navigationShell;
  final String path;
  const MainScaffold({
    super.key,
    required this.navigationShell,
    required this.path,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: navigationShell,
      bottomNavigationBar: AnimatedSwitcher(
        duration: const Duration(milliseconds: 300),
        switchInCurve: Curves.easeOut,
        switchOutCurve: Curves.easeIn,
        child: Routes.hideBottomNav(path)
            ? const SizedBox.shrink(key: ValueKey('no_nav'))
            : _BottomNavBar(
                key: const ValueKey('bottom_nav'),
                navigationShell: navigationShell,
              ),
        transitionBuilder: (child, animation) => SizeTransition(
          sizeFactor: animation,
          axisAlignment: -1,
          axis: Axis.vertical,
          child: FadeTransition(opacity: animation, child: child),
        ),
      ),
    );
  }
}

class _BottomNavBar extends StatelessWidget {
  final StatefulNavigationShell navigationShell;
  const _BottomNavBar({super.key, required this.navigationShell});

  void _onItemTap(int value) {}

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: navigationShell.currentIndex,
      onTap: (value) {
        navigationShell.goBranch(
          value,
          initialLocation: value == navigationShell.currentIndex,
        );
      },
      items: [
        BottomNavigationBarItem(
          icon: Icon(Icons.home, color: AppColors.blueColor),
          label: 'Home',
          backgroundColor: AppColors.primaryColor,
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.search, color: AppColors.blueColor),
          label: 'Explore',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.add, color: AppColors.blueColor),
          label: 'Upload',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.favorite, color: AppColors.blueColor),
          label: 'Notifications',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.person, color: AppColors.blueColor),
          label: 'Profile',
        ),
      ],
    );
  }
}
