part of '../chat/view.dart';
class CustomAppBarForChatBot extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBarForChatBot({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      forceMaterialTransparency: true,
      backgroundColor: Colors.white,
      leading:  GestureDetector(
        onTap: () => AppNavigator.pop(),
        child: const Padding(
          padding: EdgeInsets.only(left: 8.0),
          child: CustomSvg(svg: AppIcons.backButton,),
        ),
      ),
      centerTitle: true,
      title: Row(
        spacing:5,
        children: [
          SizedBox(width: MediaQuery.of(context).size.width*0.15,),
        Image.asset(
          AppImages.robot,
          width: 50,
        ),
        Text("chatbot",style: kTextStyleAppBarTitle,textAlign: TextAlign.center
          ,)
      ],),);
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
