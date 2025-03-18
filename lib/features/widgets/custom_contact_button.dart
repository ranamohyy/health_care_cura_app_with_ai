
import'package:flutter/material.dart';

import '../../core/helpers/app_colors.dart';
Widget buildContactButton(IconData icon, String text, String url) {
  return Padding(
    padding: const EdgeInsets.symmetric(vertical: 5),
    child: ElevatedButton.icon(
      icon: Icon(icon,color: Colors.white,),
      label: Text(text),
      onPressed: () {
      },
      style: ElevatedButton.styleFrom(
        backgroundColor: AppColors.primary,
        foregroundColor: Colors.white,
      ),
    ),
  );
}
