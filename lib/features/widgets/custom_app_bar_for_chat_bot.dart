part of '../chat/view.dart';
class CustomAppBarForChatBot extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBarForChatBot({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white,
      actions:const [Padding(
        padding:  EdgeInsets.only(right: 8.0),
        child: CustomSvg(svg:
        AppIcons.add,
          width: 50,
        ),
      )
      ],
      leading:  GestureDetector(
        onTap: () => AppNavigator.pop(),
        child: const Padding(
          padding: EdgeInsets.only(left: 8.0),
          child: CustomSvg(svg: AppIcons.backButton,),
        ),
      ),
      title: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        spacing:5,
        children: [
        Padding(
          padding: const EdgeInsets.only(left: 8.0),
          child: Image.asset(
            AppImages.robot,
            width: 50,
          ),
        ),
        Text("chatbot",style: kTextStyleAppBarTitle,)
      ],),);
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
