import 'package:cura/core/helpers/app_assets.dart';
import 'package:cura/core/helpers/styles.dart';
import 'package:cura/features/widgets/custom_app_bar.dart';
import 'package:flutter/material.dart';
import '../widgets/build_team_member_section.dart';
import '../widgets/custom_contact_button.dart';

class AboutUsScreen extends StatelessWidget {
  const AboutUsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(
        title: "About Us",
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Center(
              child: CircleAvatar(
                radius: 50,
                backgroundImage:
                    AssetImage(AppImages.aboutUs), // Replace with your logo
              ),
            ),
            const SizedBox(height: 20),
            Text(
              "Medical AI Assistant",
              style: kTextStyle16BoldBlack,
            ),
            const SizedBox(height: 8),
            Text(
              "Our AI-powered platform helps doctors and patients with diagnosis, treatment suggestions, and medical insights. Built with advanced AI models, our app ensures accuracy and reliability in healthcare decision-making.",
              style: kTextStyle14Grey,
            ),
            const SizedBox(height: 20),
            Text(
              "Meet Our Team",
              style: kTextStyle16BoldBlack,
            ),
            const SizedBox(height: 10),
            buildTeamMember(
                "Dr. Sarah Johnson", "AI Researcher", AppImages.doctor),
            buildTeamMember("John Doe", "Software Engineer",  AppImages.doctor),
            buildTeamMember("Emily Smith", "UX Designer",  AppImages.doctor),
            const SizedBox(height: 20),
            const Text(
              "Contact Us",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            buildContactButton(
                Icons.language, "Visit Website", "https://yourwebsite.com"),
            buildContactButton(Icons.phone, "Call Support", "tel:+123456789"),
            buildContactButton(
                Icons.email, "Email Us", "mailto:support@yourapp.com"),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
