import 'package:cura/core/app_navigator.dart';
import 'package:cura/features/widgets/custom_app_bar.dart';
import 'package:flutter/material.dart';

import '../../../core/helpers/app_assets.dart';
import '../../change_profile/view.dart';
import '../../privacy_screen/view.dart';
import '../../settings/view.dart';
import '../../widgets/card_profile_screen.dart';

class MyAccountPage extends StatelessWidget {
  const MyAccountPage({super.key, this.color});
  final Color? color;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(
        title: 'Profile',
        showBackButton: false,
      ),
      body: Column(
        children: [
          Image.asset(
            AppImages.changeProfile,
            height: 140,
          ),
          const SizedBox(
            height: 30,
          ),
          buildProfileOption(AppIcons.editProfile, "Edit profile",
              () => AppNavigator.push(const ChangeProfileView()),true),
          buildProfileOption(AppIcons.setting, "Settings",
              () => AppNavigator.push(const SettingsView()),true),
          buildProfileOption(AppIcons.privacy, "Privacy",
              () => AppNavigator.push(const PrivacyPolicyScreen()),true),
          buildProfileOption(AppIcons.logOut, "Logout", () {},false, isLogout: true),
        ],
      ),
    );
  }

}
