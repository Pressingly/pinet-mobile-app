import 'package:auto_route/auto_route.dart';
import 'package:design/design.dart';
import 'package:flutter/material.dart';

@RoutePage()
class SettingsHomePage extends StatelessWidget {
  const SettingsHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final settingsItems = <SettingItem>[
      SettingItem(
        icon: Icons.person_outlined,
        title: 'Profile',
        onTap: () => {},
      ),
      SettingItem(
        icon: CustomIcons.faceId,
        title: 'Setup Face ID',
        onTap: () => {},
      ),
      SettingItem(
        icon: Icons.notifications_outlined,
        title: 'Notification',
        onTap: () => {},
      ),
      SettingItem(
        icon: Icons.language,
        title: 'Language',
        onTap: () => {},
      ),
      SettingItem(
        icon: Icons.policy_outlined,
        title: 'User Policies',
        onTap: () => {},
      ),
      SettingItem(
        icon: Icons.info_outline,
        title: 'About',
        onTap: () => {},
      ),
      SettingItem(
        icon: Icons.logout,
        title: 'Logout',
        onTap: () => _onLogoutItemPressed(context),
      ),
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text('Settings'),
        centerTitle: true,
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(16),
        itemCount: settingsItems.length,
        itemBuilder: (context, index) {
          final item = settingsItems[index];
          return ListTile(
            leading: Icon(item.icon),
            trailing: const Icon(Icons.arrow_right),
            title: Text(item.title),
            onTap: item.onTap,
          );
        },
      ),
    );
  }

  Future<void> _onLogoutItemPressed(BuildContext context) async {
    await context.router.replaceAll([
      const PageRouteInfo('DashboardRoute'),
    ]);
  }
}

class SettingItem {
  const SettingItem({
    required this.icon,
    required this.title,
    required this.onTap,
  });

  final IconData icon;
  final String title;
  final VoidCallback onTap;
}
