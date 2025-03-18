import 'package:cura/core/app_navigator.dart';
import 'package:cura/core/helpers/CustomSvg.dart';
import 'package:cura/core/helpers/app_assets.dart';
import 'package:cura/features/widgets/custom_app_bar.dart';
import 'package:flutter/material.dart';

import '../about_us/view.dart';

class SettingsView extends StatefulWidget {
  const SettingsView({super.key});
  @override
  State<SettingsView> createState() => _SettingsViewState();
}

class _SettingsViewState extends State<SettingsView> {
  bool isDarkMode = false;
  bool showNotifications = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(title: "Settings"),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text("Account",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            const SizedBox(height: 10),
            Container(
              decoration: BoxDecoration(
                color: Colors.grey[100],
                borderRadius: BorderRadius.circular(12),
              ),
              child: _buildSwitchTile(
                icon: AppIcons.notificationsOutlined,
                title: "Show Notification",
                value: showNotifications,
                onChanged: (value) {
                  setState(() {
                    showNotifications = value;
                  });
                },
              ),
            ),
            const SizedBox(height: 20),
            const Text("Language",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            const SizedBox(height: 10),
            Container(
              decoration: BoxDecoration(
                color: Colors.grey[100],
                borderRadius: BorderRadius.circular(12),
              ),
              child: ListTile(
                leading: const CustomSvg(svg: AppIcons.language),
                title: const Text("English (US)"),
                onTap: () {},
              ),
            ),
            const SizedBox(height: 20),
            const Text("Support",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            const SizedBox(height: 10),
            Container(
                decoration: BoxDecoration(
                  color: Colors.grey[100],
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Column(children: [
                  ListTile(
                    leading: const Icon(Icons.info_outline),
                    title: const Text("About us"),
                    trailing: const Icon(Icons.arrow_forward_ios),
                    onTap: () {
                      AppNavigator.push(const AboutUsScreen());
                    },
                  ),
                  ListTile(
                    leading: const CustomSvg(svg: AppIcons.deleteAccount),
                    title: const Text("Delete account",
                        style: TextStyle(color: Colors.red)),
                    onTap: () {},
                  ),
                ]))
          ],
        ),
      ),
    );
  }

  Widget _buildSwitchTile(
      {required icon,
      required String title,
      required bool value,
      required Function(bool) onChanged}) {
    return ListTile(
      leading: CustomSvg(svg: icon),
      title: Text(title),
      trailing: Transform.scale(
        scale: 1,
        child: Switch(
          trackOutlineWidth: const WidgetStatePropertyAll(0),
          materialTapTargetSize: MaterialTapTargetSize.padded,
          inactiveTrackColor: const Color(0xffAFAFAF),
          activeTrackColor: Colors.green,
          thumbColor: const WidgetStatePropertyAll(Colors.white),
          value: value,
          onChanged: onChanged,
        ),
      ),
    );
  }
}
