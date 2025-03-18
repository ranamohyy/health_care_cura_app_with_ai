import 'package:flutter/material.dart';

import 'app_colors.dart';

TextStyle get kTextStyle12White =>
    TextStyle(fontSize: 12, fontWeight: FontWeight.w400, color: Colors.white);
TextStyle get kTextStyle16White =>
    TextStyle(fontSize: 16, fontWeight: FontWeight.w400, color: Colors.white);
TextStyle get kTextStyleAppBarTitle =>
    TextStyle(color: Colors.black, fontSize: 16, fontWeight: FontWeight.bold);
TextStyle get kTextStyle16BoldBlack =>
    TextStyle(fontSize: 15, fontWeight: FontWeight.bold);
TextStyle get kTextStyle12Grey =>
    TextStyle(fontSize: 12, color: Colors.grey);
TextStyle get kTextStyle14Grey =>
    TextStyle(fontSize: 14, color: Colors.grey);
TextStyle get kTextStyle14UnderLine =>
    TextStyle(fontSize: 14, fontWeight: FontWeight.bold,
        decoration: TextDecoration.underline,
        decorationColor: AppColors.primary,
        color: AppColors.primary);
