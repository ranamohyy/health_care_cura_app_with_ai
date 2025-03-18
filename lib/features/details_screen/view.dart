import 'package:cura/core/helpers/app_assets.dart';
import 'package:cura/features/widgets/custom_app_bar.dart';
import 'package:flutter/material.dart';
import '../../core/helpers/styles.dart';
import '../widgets/health_instriction_card.dart';

class DetailsView extends StatelessWidget {
  const DetailsView({super.key, required this.image});
  final String image;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(title: "Take care your health"),
      body: SingleChildScrollView(
        child: Padding(
          padding:const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
             const SizedBox(height: 16),
              Center(
                child: Image.asset(image, height: 180),
              ),
             const SizedBox(height: 40),
              Text(
                "Seasonal allergies or COVID-19",
                style: kTextStyle16BoldBlack,
              ),
              const SizedBox(height: 20),
              const HealthInstructionCard(
                image: AppImages.wearMask,
                title: "Wearing a Mask",
                description:
                    "Wearing a mask protects against the spread of infection, especially in crowds.",
              ),
              const  HealthInstructionCard(
                image: AppImages.washHand,
                title: "Handwashing",
                description:
                    "Handwashing removes viruses and bacteria, reducing the risk of illness and infection spread.",
              ),
              const HealthInstructionCard(
                image: AppImages.cologine,
                title: "Using Cologne",
                description:
                    "Cologne boosts hygiene, freshness, and helps kill germs on the skin.",
              ),
            ],
          ),
        ),
      ),
    );
  }
}
