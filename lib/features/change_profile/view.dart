import 'package:cura/core/helpers/app_assets.dart';
import 'package:cura/core/helpers/my_button.dart';
import 'package:cura/core/helpers/styles.dart';
import 'package:cura/features/widgets/custom_app_bar.dart';
import 'package:flutter/material.dart';

import '../widgets/my_input.dart';

class ChangeProfileView extends StatelessWidget {
  const ChangeProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(title: "Edit Profile"),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Image.asset(
              AppImages.changeProfile,
              height: 140,
            ),
            const SizedBox(height: 30,),

            Text(
              " Name",
              style: kTextStyle14semiBoldBlack,
            ),
            const SizedBox(height: 8,),
            const MyInput(
              title: "Roaa Emad",
            ),
            const SizedBox(height: 24,),

            Text(
              " E-mail",
              style: kTextStyle14semiBoldBlack,
            ),
            const SizedBox(height: 8,),

            const MyInput(
              title: "roaaemad549@gmail.com",
            ),            const SizedBox(height: 80,),

            const MyButton(title: "Save Changes")
          ],
        ),
      ),
    );
  }
}
