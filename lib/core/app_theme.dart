import 'package:cura/core/helpers/app_colors.dart';
import 'package:flutter/material.dart';

import 'helpers/styles.dart';
 ThemeData get appTheme=>ThemeData(
  scaffoldBackgroundColor: Colors.white,
  splashColor: Colors.transparent,
  highlightColor: Colors.transparent,
  inputDecorationTheme: InputDecorationTheme(
       hintStyle: kTextStyle14Grey,
       focusedBorder:  OutlineInputBorder(
        borderSide: BorderSide(color: Colors.grey.shade900),
        borderRadius: BorderRadius.circular(40),),
       border: OutlineInputBorder(
        borderSide: BorderSide(color: AppColors.grey),
        borderRadius: BorderRadius.circular(40)
        ,
       ),

  ),
  bottomNavigationBarTheme: BottomNavigationBarThemeData(
      selectedItemColor:AppColors.primary,
      unselectedLabelStyle:const TextStyle(
        fontSize: 12,
        fontWeight: FontWeight.w400,
      ),
      selectedLabelStyle:const TextStyle(
        fontSize: 12,
        fontWeight: FontWeight.w400,
      ),
      unselectedItemColor: Colors.grey,
      showSelectedLabels: true,
      elevation: 0,
      backgroundColor: Colors.white,

      type:BottomNavigationBarType.fixed
  ),
  useMaterial3: true,
);
