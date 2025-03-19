import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:skeletonizer/skeletonizer.dart';
import '../controller/notifications_cubit/notifications_cubit.dart';
import '../widgets/custom_app_bar.dart';
import '../widgets/health_instriction_card.dart';

class NotificationsView extends StatelessWidget {
  const NotificationsView({super.key});
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => NotificationsCubit()..getAllNotifications(),
      child: Scaffold(
        appBar: const MyAppBar(title: "Notifications"),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 16),
                const HealthInstructionCard(
                  showButton: true,
                  icon: true,
                  title: "Additional Check-Up Recommended",
                  description:
                      "We recommend an additional medical check-up based on your entered symptoms",
                ),
                BlocBuilder<NotificationsCubit, NotificationsState>(
                    builder: (context, state) {
                  if (state is NotificationsLoading) {
                    return Skeletonizer(
                        child: Column(
                      children: List.generate(
                        4,
                        (index) => const HealthInstructionCard(
                          icon: true,
                          title: 'loading',
                          description: 'loading',
                        ),
                      ),
                    ));
                  }
                  final cubit = context.read<NotificationsCubit>();
                  return Column(
                    children: List.generate(
                      cubit.notifications.length,
                      (index) => HealthInstructionCard(
                        icon: true,
                        title: cubit.notifications[index].title ?? '',
                        description:
                            cubit.notifications[index].description ?? '',
                      ),
                    ),
                  );
                }),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
