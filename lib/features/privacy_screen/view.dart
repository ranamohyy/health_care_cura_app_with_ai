
import 'package:cura/core/helpers/styles.dart';
import 'package:cura/features/widgets/custom_app_bar.dart';
import 'package:flutter/material.dart';

class PrivacyPolicyScreen extends StatelessWidget {
  const PrivacyPolicyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:const  MyAppBar(
        title: "Privacy Policy",
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Title
            Text(
              "Privacy Policy",
              style:kTextStyle16BoldBlack,
            ),
            SizedBox(height: 10),

            // Introduction
            Text(
              "We are committed to protecting your privacy. This Privacy Policy explains how we collect, use, and safeguard your information when using our Medical AI application.",
              style: kTextStyle14Grey,
            ),
            SizedBox(height: 20),

            // Section 1: Data Collection
            _buildPrivacySection(
              "1. Data Collection",
              "We collect necessary personal and medical information to provide accurate AI-based healthcare recommendations. This may include name, age, medical history, and device data.",
            ),

            // Section 2: How We Use Data
            _buildPrivacySection(
              "2. How We Use Your Data",
              "Your data is used to improve AI predictions, personalize your experience, and enhance medical decision-making. We do not sell or share your data with third parties.",
            ),

            // Section 3: Data Security
            _buildPrivacySection(
              "3. Data Security",
              "We use advanced encryption and security measures to protect your data from unauthorized access, disclosure, or misuse.",
            ),

            // Section 4: Your Rights
            _buildPrivacySection(
              "4. Your Rights",
              "You have the right to access, update, or delete your personal information. You can also opt out of AI-based recommendations at any time.",
            ),

          ],
        ),
      ),
    );
  }

  // Section Widget
  Widget _buildPrivacySection(String title, String content) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(title,
              style: kTextStyle16BoldBlack),
          SizedBox(height: 5),
          Text(content, style: kTextStyle14Grey),
        ],
      ),
    );
  }
}