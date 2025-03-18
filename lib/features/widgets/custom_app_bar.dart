import 'package:cura/core/app_navigator.dart';
import 'package:flutter/material.dart';

import '../../core/helpers/CustomSvg.dart';
import '../../core/helpers/app_assets.dart';
import '../../core/helpers/styles.dart';
class MyAppBar extends StatelessWidget implements PreferredSizeWidget{
  const MyAppBar({super.key,required this.title,this.showBackButton=true});
final String title;
final bool showBackButton;
  @override
  Widget build(BuildContext context) {
    return AppBar(
      forceMaterialTransparency: true,
      shadowColor:Colors.white ,
      backgroundColor: Colors.white,
      leadingWidth: 45,
      leading:showBackButton?GestureDetector(
        onTap: () => AppNavigator.pop(),
        child: const Padding(
          padding: EdgeInsets.only(left: 8.0),
          child: CustomSvg(svg: AppIcons.backButton,),
        ),
      ):const SizedBox(),
      centerTitle: true,
      title: Text(
        title,
        style: kTextStyleAppBarTitle
      ),
    );
  }

  @override
  Size get preferredSize =>const Size.fromHeight(kToolbarHeight);
}
