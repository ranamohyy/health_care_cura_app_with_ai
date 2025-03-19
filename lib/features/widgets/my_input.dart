import 'package:flutter/material.dart';

import '../../core/helpers/app_colors.dart';

class MyInput extends StatelessWidget {
  const MyInput({
    super.key,required this.title
  });
  final String title;
  @override
  Widget build(BuildContext context) {
    return TextField(
      enabled: false,
      decoration: InputDecoration(
          hintStyle: const TextStyle(color: Colors.black,fontSize: 12),
          border: OutlineInputBorder(
              borderRadius: const BorderRadius.all(Radius.circular(12),
              ),borderSide: BorderSide(color:AppColors.outlinedInputField)),
          hintText:title),
    );
  }
}
