import 'package:cura/core/helpers/app_colors.dart';
import 'package:flutter/material.dart';
 ThemeData get appTheme=>ThemeData(
  scaffoldBackgroundColor: Colors.white,
  bottomNavigationBarTheme: BottomNavigationBarThemeData(
      selectedItemColor:AppColors.primary,
      unselectedItemColor: Colors.grey,
      showSelectedLabels: true,
      elevation: 0,
      backgroundColor: Colors.white,
      type:BottomNavigationBarType.fixed ),
  useMaterial3: true,
);
