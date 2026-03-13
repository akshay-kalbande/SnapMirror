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
      type: BottomNavigationBarType.fixed,
      fixedColor: Colors.white,
      iconSize: 24,
      showSelectedLabels: false,
      showUnselectedLabels: false,
      enableFeedback: false,
      onTap: (value) {
        navigationShell.goBranch(
          value,
          initialLocation: value == navigationShell.currentIndex,
        );
      },
      items: [
        BottomNavigationBarItem(
          icon: Icon(Icons.home_outlined),
          activeIcon: Icon(Icons.home),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.search_outlined),
          activeIcon: Icon(Icons.search),
          label: 'Explore',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.add_circle_outline),
          activeIcon: Icon(Icons.add_circle),
          label: 'Upload',
        ),
        // BottomNavigationBarItem(
        //   icon: Icon(Icons.favorite_border),
        //   activeIcon: Icon(Icons.favorite),
        //   label: 'Notifications',
        // ),
        BottomNavigationBarItem(
          icon: Icon(Icons.person_outline),
          activeIcon: Icon(Icons.person),
          label: 'Profile',
        ),
      ],
    );
  }
}
