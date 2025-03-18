import 'package:cura/core/app_navigator.dart';
import 'package:cura/core/helpers/app_assets.dart';
import 'package:cura/core/helpers/my_button.dart';
import 'package:cura/features/chat/view.dart';
import 'package:cura/features/widgets/custom_app_bar.dart';
import 'package:flutter/material.dart';
import '../../../core/helpers/styles.dart';
class ChatBotView extends StatelessWidget {
  const ChatBotView({
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(
        title: "Chatbot",
        showBackButton: false,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30.0),
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(
                child: Image.asset(
                  AppImages.emptyChat,
                ),
              ),
              Text(
                textAlign: TextAlign.center,
                "How can we help you?",
                style: kTextStyle16BoldBlack,
              ),
              const SizedBox(height: 20),
              Text(
                textAlign: TextAlign.center,
                "Feel free to share how we can assist you! Whether you need information, support, or have any questions, we're here to help you",
                style: kTextStyle14Grey,
              ),
              const SizedBox(height: 40),
              MyButton(
                onTap:()=> AppNavigator.push(ChatScreen()),
                title: "New Chat",
                heightOfButton: 55,
                style: kTextStyle16White,
              )
            ]),
      ),
    );
  }
}
