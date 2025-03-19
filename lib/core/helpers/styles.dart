import 'package:flutter/material.dart';

import 'app_colors.dart';

TextStyle get kTextStyle12White =>
    const TextStyle(fontSize: 12, fontWeight: FontWeight.w400, color: Colors.white);
TextStyle get kTextStyle16White =>
    const TextStyle(fontSize: 16, fontWeight: FontWeight.w400, color: Colors.white);
TextStyle get kTextStyleAppBarTitle =>
    const TextStyle(color: Colors.black, fontSize: 16, fontWeight: FontWeight.bold);
TextStyle get kTextStyle16BoldBlack =>
    const TextStyle(fontSize: 16, fontWeight: FontWeight.bold);
TextStyle get kTextStyle14semiBoldBlack =>
    const TextStyle(fontSize: 14, fontWeight: FontWeight.w400);
TextStyle get kTextStyle12Grey =>
    const TextStyle(fontSize: 12, color: Colors.grey);
TextStyle get kTextStyle14Grey =>
    const TextStyle(fontSize: 14, color: Colors.grey);
TextStyle get kTextStyle14UnderLine =>
    TextStyle(fontSize: 14, fontWeight: FontWeight.bold,
        decoration: TextDecoration.underline,
        decorationColor: AppColors.primary,
        color: AppColors.primary);
