import 'package:chat_bubbles/bubbles/bubble_special_three.dart';
import 'package:cura/core/helpers/app_assets.dart';
import 'package:cura/core/helpers/app_colors.dart';
import 'package:cura/core/helpers/styles.dart';
import 'package:cura/features/controller/chat_cubit/chat_bot_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../core/app_navigator.dart';
import '../../core/helpers/CustomSvg.dart';
part '../widgets/custom_app_bar_for_chat_bot.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (context) => ChatBotCubit(),
        child: Scaffold(
            appBar:const CustomAppBarForChatBot(),
            body: BlocBuilder<ChatBotCubit, ChatBotState>(
                builder: (context, state) {
              final cubit = context.read<ChatBotCubit>();
              final messages = cubit.messages;
              final isMe = cubit.isMe;
              return Column(children: [
               const SizedBox(height: 20,),
                Expanded(
                  child: ListView.builder(
                    itemCount: cubit.messages.length,
                    itemBuilder: (context, index) => Row(
                      mainAxisAlignment: isMe[index] == true
                          ? MainAxisAlignment.end
                          : MainAxisAlignment.start,
                      children: [
                        if (isMe[index] == false) ...{
                          Padding(
                            padding: const EdgeInsets.only(left: 8.0),
                            child: Image.asset(
                              AppImages.robot,
                              width: 50,
                            ),
                          )
                        },
                        BubbleSpecialThree(
                          text: messages[index],
                          isSender: isMe[index],
                          tail: false,
                          sent: isMe[index],
                          constraints: const BoxConstraints(maxWidth: 150),
                          color: isMe[index] == true
                              ? AppColors.primary
                              : Colors.grey.shade200,
                          textStyle: TextStyle(
                            color: isMe[index] == true
                                ? Colors.grey.shade200
                                : AppColors.primary,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(children: [
                    Expanded(
                      child: TextFormField(
                        cursorColor: AppColors.primary,
                        controller: cubit.textEditingController,
                        textInputAction: TextInputAction.send,
                        decoration: InputDecoration(
                          hintText: 'Type your message...',
                          hintStyle: kTextStyle14Grey,
                        ),
                      ),
                    ),
                    const SizedBox(width: 10,),
                    GestureDetector(
                        onTap: (){cubit.sendMessages();},
                        child: const CustomSvg(svg: AppIcons.send))
                  ]),
                )
              ]);
            })));
  }
}
