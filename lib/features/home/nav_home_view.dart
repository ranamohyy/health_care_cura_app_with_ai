import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../core/helpers/CustomSvg.dart';
import '../../core/helpers/app_assets.dart';
import 'nav_home_cubit.dart';

class NavUserView extends StatelessWidget {
  const NavUserView({super.key});
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => NavCubit(),
      child: BlocBuilder<NavCubit, int>(builder: (context, currentIndex) {
        final cubit = context.read<NavCubit>();
        return Scaffold(
            backgroundColor: Colors.black,
            bottomNavigationBar: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                BottomNavigationBar(
                    currentIndex: currentIndex,
                    onTap: (page) {
                      cubit.changePage(page);
                    },
                    items: [
                      BottomNavigationBarItem(
                          icon: CustomSvg(
                              svg: AppIcons.home,
                              color: NavCubit.changeColor(0, currentIndex)),
                          label: "Home"),
                      BottomNavigationBarItem(
                          icon: CustomSvg(
                            svg: AppIcons.chatFilled,
                            color: NavCubit.changeColor(1, currentIndex),
                          ),
                          label: "Chat Bot"),
                      BottomNavigationBarItem(
                          icon: CustomSvg(
                            svg: AppIcons.calender,
                            color: NavCubit.changeColor(2, currentIndex),
                          ),
                          label: "Calender"),
                      BottomNavigationBarItem(
                          icon: CustomSvg(
                            svg: AppIcons.profile,
                            color: NavCubit.changeColor(3, currentIndex),
                          ),
                          label: "Profile"),
                    ]),
              ],
            ),
            body: cubit.tabsOfUser[currentIndex]);
      }),
    );
  }
}
