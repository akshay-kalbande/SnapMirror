// import 'package:flutter/material.dart';
// import 'package:go_router/go_router.dart';
//
// import '../core/route/routes.dart';
// import '../core/theme/app_colors.dart';
// import '../core/utils/dimensions.dart';
//
// class MainScaffold extends StatelessWidget {
//   final StatefulNavigationShell navigationShell;
//   final String path;
//   const MainScaffold({
//     super.key,
//     required this.navigationShell,
//     required this.path,
//   });
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: navigationShell,
//       bottomNavigationBar: AnimatedSwitcher(
//         duration: const Duration(milliseconds: 300),
//         switchInCurve: Curves.easeOut,
//         switchOutCurve: Curves.easeIn,
//         child: Routes.hideBottomNav(path)
//             ? const SizedBox.shrink(key: ValueKey('no_nav'))
//             : _BottomNavBar(
//                 key: const ValueKey('bottom_nav'),
//                 navigationShell: navigationShell,
//               ),
//         transitionBuilder: (child, animation) => SizeTransition(
//           sizeFactor: animation,
//           axisAlignment: -1,
//           axis: Axis.vertical,
//           child: FadeTransition(opacity: animation, child: child),
//         ),
//       ),
//     );
//   }
// }
//
// class _BottomNavBar extends StatelessWidget {
//   final StatefulNavigationShell navigationShell;
//   const _BottomNavBar({super.key, required this.navigationShell});
//
//   void _onItemTap(int value) {}
//
//   @override
//   Widget build(BuildContext context) {
//     return BottomNavigationBar(
//       currentIndex: navigationShell.currentIndex,
//       type: BottomNavigationBarType.fixed,
//       fixedColor: Colors.white,
//       iconSize: 24,
//       showSelectedLabels: false,
//       showUnselectedLabels: false,
//       enableFeedback: true,
//       onTap: (value) {
//         navigationShell.goBranch(
//           value,
//           initialLocation: value == navigationShell.currentIndex,
//         );
//       },
//       items: [
//         BottomNavigationBarItem(
//           icon: Icon(Icons.home_outlined),
//           activeIcon: Icon(Icons.home),
//           label: 'Home',
//         ),
//         BottomNavigationBarItem(
//           icon: Icon(Icons.search_outlined),
//           activeIcon: Icon(Icons.search),
//           label: 'Explore',
//         ),
//         // if (MediaQuery.of(context).size.width >= webScreenSize)
//         //   BottomNavigationBarItem(
//         //     icon: Icon(Icons.message_outlined),
//         //     activeIcon: Icon(Icons.message_rounded),
//         //     label: 'Upload',
//         //   ),
//         BottomNavigationBarItem(
//           icon: Icon(Icons.add_circle_outline),
//           activeIcon: Icon(Icons.add_circle),
//           label: 'Upload',
//         ),
//
//         // BottomNavigationBarItem(
//         //   icon: Icon(Icons.favorite_border),
//         //   activeIcon: Icon(Icons.favorite),
//         //   label: 'Notifications',
//         // ),
//         BottomNavigationBarItem(
//           icon: Icon(Icons.person_outline),
//           activeIcon: Icon(Icons.person),
//           label: 'Profile',
//         ),
//       ],
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../core/route/routes.dart';
import '../core/utils/dimensions.dart' as Dimensions;

class NavItem {
  final IconData icon;
  final IconData activeIcon;
  final String label;
  final bool desktopOnly;

  const NavItem({
    required this.icon,
    required this.activeIcon,
    required this.label,
    this.desktopOnly = false,
  });
}

const List<NavItem> _allNavItems = [
  NavItem(icon: Icons.home_outlined, activeIcon: Icons.home, label: 'Home'),
  NavItem(
    icon: Icons.search_outlined,
    activeIcon: Icons.search,
    label: 'Explore',
  ),
  NavItem(
    icon: Icons.message_outlined,
    activeIcon: Icons.message,
    label: 'Messages',
    desktopOnly: true,
  ),
  NavItem(
    icon: Icons.add_circle_outline,
    activeIcon: Icons.add_circle,
    label: 'Upload',
  ),
  NavItem(
    icon: Icons.person_outline,
    activeIcon: Icons.person,
    label: 'Profile',
  ),
];

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
    final bool isBigScreen =
        MediaQuery.of(context).size.width >= Dimensions.webScreenSize;
    final bool hideNav = Routes.hideBottomNav(path);

    return Scaffold(
      body: Row(
        children: [
          if (isBigScreen && !hideNav)
            _SideNavRail(navigationShell: navigationShell),
          Expanded(child: navigationShell),
        ],
      ),
      bottomNavigationBar: (isBigScreen || hideNav)
          ? const SizedBox.shrink()
          : AnimatedSwitcher(
              duration: const Duration(milliseconds: 300),
              transitionBuilder: (child, animation) => SizeTransition(
                sizeFactor: animation,
                axisAlignment: -1,
                child: FadeTransition(opacity: animation, child: child),
              ),
              child: _BottomNavBar(navigationShell: navigationShell),
            ),
    );
  }
}

class _SideNavRail extends StatelessWidget {
  final StatefulNavigationShell navigationShell;
  const _SideNavRail({required this.navigationShell});

  @override
  Widget build(BuildContext context) {
    return NavigationRail(
      selectedIndex: navigationShell.currentIndex,
      extended: MediaQuery.of(context).size.width >= 1200,
      minExtendedWidth: 200,
      onDestinationSelected: (index) => navigationShell.goBranch(
        index,
        initialLocation: index == navigationShell.currentIndex,
      ),
      destinations: _allNavItems.map((item) {
        return NavigationRailDestination(
          icon: Icon(item.icon),
          selectedIcon: Icon(item.activeIcon),
          label: Text(item.label),
        );
      }).toList(),
    );
  }
}

class _BottomNavBar extends StatelessWidget {
  final StatefulNavigationShell navigationShell;
  const _BottomNavBar({required this.navigationShell});

  @override
  Widget build(BuildContext context) {
    final visibleItems = _allNavItems.where((i) => !i.desktopOnly).toList();
    final currentItem = _allNavItems[navigationShell.currentIndex];
    final displayIndex = visibleItems.indexOf(currentItem);

    return BottomNavigationBar(
      currentIndex: displayIndex == -1 ? 0 : displayIndex,
      type: BottomNavigationBarType.fixed,
      fixedColor: Colors.white,
      showSelectedLabels: false,
      showUnselectedLabels: false,
      onTap: (clickedIndex) {
        final trueIndex = _allNavItems.indexOf(visibleItems[clickedIndex]);
        navigationShell.goBranch(
          trueIndex,
          initialLocation: trueIndex == navigationShell.currentIndex,
        );
      },
      items: visibleItems.map((item) {
        return BottomNavigationBarItem(
          icon: Icon(item.icon),
          activeIcon: Icon(item.activeIcon),
          label: item.label,
        );
      }).toList(),
    );
  }
}
