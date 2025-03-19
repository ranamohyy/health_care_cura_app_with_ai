import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'chat_bot_state.dart';

class ChatBotCubit extends Cubit<ChatBotState> {
  ChatBotCubit() : super(ChatBotInitial());
  TextEditingController textEditingController=TextEditingController();
  List<String> messages = ['Hi, How are you? ', 'iam fine'];
  List<bool> isMe = [false, true];
void sendMessages(){
  if(textEditingController.text.isNotEmpty){
  messages.add(textEditingController.text);
  isMe.add(true);
textEditingController.clear();
  emit(ChatBotInitial());
  }
}
}
