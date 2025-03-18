import 'package:cura/core/helpers/app_assets.dart';
import 'package:flutter/material.dart';
import '../widgets/custom_app_bar.dart';
import '../widgets/health_instriction_card.dart';

class NotificationsView extends StatelessWidget {
  const NotificationsView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: MyAppBar(title: "Notifications"),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 16),
              HealthInstructionCard(
                showButton: true,
                icon: true,
                title: "Additional Check-Up Recommended",
                description:
                    "We recommend an additional medical check-up based on your entered symptoms",
              ),
              HealthInstructionCard(
                icon: true,
                title: "Time for Your Routine Check-Up",
                description:
                    "Routine check-ups help maintain your health and detect issues early",
              ),
              HealthInstructionCard(
                icon: true,
                image: AppIcons.message,
                title: "Important Reminder",
                description:
                    "Don’t forget to review the symptoms you’ve entered for an accurate diagnosis",
              ),
              HealthInstructionCard(
                icon: true,
                title: "Analysis Complete",
                description:
                    "Your data has been successfully analyzed. You can now view the results",
              ),
              HealthInstructionCard(
                icon: true,
                title: "Your Health Condition Needs Follow-up",
                description: "It is important to follow up with a specialist",
              ),
            ],
          ),
        ),
      ),
    );
  }
}
