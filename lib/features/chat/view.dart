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
          // resizeToAvoidBottomInset: true,
            backgroundColor: Colors.white,
            // extendBodyBehindAppBar: true,
            extendBody: true,
            appBar: const CustomAppBarForChatBot(),
            body: BlocBuilder<ChatBotCubit,ChatBotState>(
                builder:(context, blocState) {
                final cubit = BlocProvider.of<ChatBotCubit>(context);
                return StreamBuilder(
                  stream: cubit.messagesStream,
                  initialData: cubit.messages,
                  builder: (context, state) {
                    final messages = state.data ?? [];
                    final cubit = context.read<ChatBotCubit>();
                    return Column(children: [
                      Expanded(
                        child: ListView.builder(
                            physics: const BouncingScrollPhysics(),
                            controller: cubit.scrollController,
                            itemCount:messages.length,
                            itemBuilder: (context, index) {
                              final message = messages[index];
                              final isMe = messages[index].isMe;
                              return Row(
                                mainAxisAlignment: message.isMe == true
                                    ? MainAxisAlignment.end
                                    : MainAxisAlignment.start,
                                children: [
                                  if (!isMe) ...{
                                    Padding(
                                      padding: const EdgeInsets.only(left: 8.0),
                                      child: Image.asset(
                                        AppImages.robot,
                                        width: 50,
                                      ),
                                    )
                                  },
                                  Padding(
                                    padding: const EdgeInsets.symmetric(vertical: 8.0),
                                    child: BubbleSpecialThree(
                                      text: message.text,
                                      isSender: isMe,
                                      tail: false,
                                      sent: isMe,
                                      // constraints:
                                      //     const BoxConstraints(maxWidth: 300),
                                      color: isMe == true
                                          ? AppColors.primary
                                          : Colors.grey.shade200,
                                      textStyle: TextStyle(
                                        color: isMe == true
                                            ? Colors.grey.shade200
                                            : AppColors.primary,
                                      ),
                                    ),
                                  ),
                                ],
                              );
                            }),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(children: [
                          Expanded(
                            child: TextFormField(
                              maxLines: null, // يسمح بعدد غير محدود من الأسطر
                              keyboardType: TextInputType.multiline, // يعرض زر "إدخال" في الكيبورد
                              textInputAction: TextInputAction.newline, // يجعل زر "إدخال" ينشئ سطرًا جديدًا
                              cursorColor: AppColors.primary,
                              controller: cubit.textEditingController,
                                      focusNode: cubit.textFocusNode,
                              decoration: InputDecoration(
                                hintText: 'Type your message...',
                                hintStyle: kTextStyle14Grey,
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          GestureDetector(
                              onTap: () {
                                cubit.sendMessage();
                              },
                              child: const CustomSvg(svg: AppIcons.send))
                        ]),
                      )
                    ]);
                  });
              }
            )));
  }
}
