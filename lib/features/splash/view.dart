import 'package:cura/core/app_navigator.dart';
import 'package:cura/core/helpers/app_assets.dart';
import 'package:flutter/material.dart';

import '../home/nav_home_view.dart';
class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}
class _SplashViewState extends State<SplashView> {
  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      Future.delayed(const Duration(seconds: 2), () {
        AppNavigator.push(const NavUserView());
      });
    });
  super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Image.asset(AppImages.logo),

      ),
    );
  }
}
