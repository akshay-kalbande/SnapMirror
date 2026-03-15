import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../../core/route/routes.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Settings'),
        backgroundColor: Colors.black,
      ),
      body: ListView(
        children: [
          ListTile(
            leading: const Icon(Icons.person, color: Colors.white),
            title: const Text('Edit Profile'),
            onTap: () {
              context.push(Routes.editProfile);
            },
          ),
          const Divider(color: Colors.grey),
          ListTile(
            leading: const Icon(Icons.notifications, color: Colors.white),
            title: const Text('Notifications'),
            onTap: () {
              // Placeholder
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(content: Text('Notifications settings coming soon!')),
              );
            },
          ),
          ListTile(
            leading: const Icon(Icons.lock, color: Colors.white),
            title: const Text('Privacy'),
            onTap: () {
              // Placeholder
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(content: Text('Privacy settings coming soon!')),
              );
            },
          ),
          ListTile(
            leading: const Icon(Icons.info, color: Colors.white),
            title: const Text('About'),
            onTap: () {
              // Placeholder
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(content: Text('SnapMirror v1.0.0')),
              );
            },
          ),
        ],
      ),
    );
  }
}
