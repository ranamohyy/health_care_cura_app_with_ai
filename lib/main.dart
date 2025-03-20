import 'package:cura/core/app_theme.dart';
import 'package:cura/core/dio_helper.dart';
import 'package:flutter/material.dart';
import 'core/app_navigator.dart';
import 'features/splash/view.dart';

void main() {
  DioHelper.interceptors();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      navigatorKey: AppNavigator.key,
      title: 'Cura Health Care',
      theme: appTheme,
      debugShowCheckedModeBanner: false,
      home: const SplashView(),
    );
  }
}

