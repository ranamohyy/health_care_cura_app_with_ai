import 'package:cura/core/app_navigator.dart';
import 'package:cura/features/widgets/custom_app_bar.dart';
import 'package:flutter/material.dart';

import '../../privacy_screen/view.dart';
import '../../settings/view.dart';
class MyAccountPage extends StatelessWidget {
  const MyAccountPage({super.key, this.color});
  final Color ?color;
  @override
  Widget build(BuildContext context) {
    return
    Scaffold(
      appBar: const MyAppBar(title: 'Profile',showBackButton: false,),
      body: Column(

        children: [
      _buildProfileOption(Icons.person_outline, "Edit profile",(){}),
      _buildProfileOption(Icons.settings_outlined, "Settings",()=>AppNavigator.push(SettingsView())),
      _buildProfileOption(Icons.privacy_tip_outlined, "Privacy",()=>AppNavigator.push(PrivacyPolicyScreen())),
      _buildProfileOption(Icons.logout, "Logout",(){},isLogout: true),
      ],
    ),
    );
  }
  Widget _buildProfileOption(IconData? icon, String title,void Function()? onTap,{bool isLogout=false}) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Column(
        children: [
          ListTile(
            leading: Icon(icon, color:isLogout ? Colors.red : Colors.black,),
            title: Text(
              title,
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w500,
                color: isLogout ? Colors.red : Colors.black,
              ),
            ),
            trailing:!isLogout?const Icon(Icons.arrow_forward_ios, size: 16, color: Colors.black54):SizedBox(),
            onTap: onTap
          ),
          const SizedBox(height: 12,),
          Divider(height: 1, color: Colors.grey.shade300),
        ],
      ),
    );
  }

}
