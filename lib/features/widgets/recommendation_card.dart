import 'package:flutter/material.dart';

class RecommendationCard extends StatelessWidget {
  final String image;

  const RecommendationCard({super.key, required this.image});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      decoration: BoxDecoration(
        image: DecorationImage(image: AssetImage(image),fit: BoxFit.cover),
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
        border:   Border.all(color: const Color(0xffD0D0D0)),
        boxShadow: const [
           BoxShadow(color: Colors.black12, blurRadius: 5, spreadRadius: 2)
        ],
      ),
    );
  }



}
