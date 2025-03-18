import 'package:cura/core/helpers/app_assets.dart';
import 'package:cura/core/helpers/my_button.dart';
import 'package:flutter/material.dart';

import '../../core/helpers/CustomSvg.dart';
import '../../core/helpers/styles.dart';

class HealthInstructionCard extends StatelessWidget {
  final String ?image;
  final String title;
  final String description;
  final bool icon;
  final bool showButton;

  const HealthInstructionCard(
      {super.key,
       this.image,
        this.icon=false,
        this.showButton=false,
      required this.title,
      required this.description});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 8),
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Colors.grey[100],
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(8),
            child:icon==false?
            Image.asset(image!, width: 100, height: 100, fit: BoxFit.cover):
            const CustomSvg(svg:AppIcons.message),
          ),
          const SizedBox(width: 12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(title, style: kTextStyle16BoldBlack),
                const SizedBox(height: 4),
                Text(description,
                    style: const TextStyle(fontSize: 12, color: Colors.grey)),
                showButton==true?
                const MyButton(title: "Start"):const SizedBox()
              ],
            ),
          ),
        ],
      ),
    );
  }
}
