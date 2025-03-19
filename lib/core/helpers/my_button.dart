import 'package:cura/core/helpers/styles.dart';
import 'package:flutter/material.dart';
import 'app_colors.dart';

class MyButton extends StatelessWidget {
  const MyButton({super.key, required this.title, this.heightOfButton, this.style,this.onTap});
  final String title;
  final TextStyle ?style;
  final double? heightOfButton;
 final void Function()?onTap;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        fixedSize: Size.fromHeight(heightOfButton??50),
          backgroundColor: AppColors.primary,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12))),
      onPressed: onTap??() {},
      child: Text(title, style:style?? kTextStyle16White),
    );
  }
}
