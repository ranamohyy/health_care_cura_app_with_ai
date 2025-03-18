import 'package:flutter/material.dart';

import '../../core/helpers/styles.dart';
class HealthCard extends StatelessWidget {
  final String title;
  final String subtitle;
  final String image;

  const HealthCard({super.key, required this.title, required this.subtitle, required this.image});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 220,
      width: 250,
      padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
        boxShadow:const [
           BoxShadow(color: Colors.black12, blurRadius: 5, spreadRadius: 2)
        ],
      ),
      child: Column(
        children: [
          Image.asset(image,),
          const SizedBox(height: 10),
          Text(
            title,
            style: const TextStyle(fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 5),
          Expanded(
            child: Text(
              subtitle,
              textAlign: TextAlign.center,
              style: kTextStyle12Grey
            ),
          ),
        ],
      ),
    );
  }
}
