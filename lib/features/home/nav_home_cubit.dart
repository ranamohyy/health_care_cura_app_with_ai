import 'package:cura/core/helpers/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'components/calender.dart';
import 'components/chat_bot.dart';
import 'components/home.dart';
import 'components/profile.dart';

class NavCubit extends Cubit<int> {
  NavCubit() : super(0);
  final tabsOfUser = <Widget>[
    HomeView(),
    const ChatBotView(),
    const CalenderView(),
    const MyAccountPage(),
  ];
  static changeColor(int index, int currentIndex) {
    return index == currentIndex
        ?AppColors.primary
        :AppColors.grey ;
  }

  void changePage(int index) {
    emit(index);
  }



}
