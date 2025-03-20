part of 'package:cura/features/home/components/home.dart';
class CustomHelloAndNotificationIcon extends StatelessWidget {
  const CustomHelloAndNotificationIcon({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      spacing: 10,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const CircleAvatar(
            radius: 30,
            backgroundImage: AssetImage(AppImages.menna)),
        const Expanded(
          child: Column(
            spacing: 5,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(),
              Text(
                "Hello Menna",
                style:
                TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              Text(
                "I can help you learn more about your health.",
                style: TextStyle(fontSize: 12, color: Colors.grey),
              ),
            ],
          ),
        ),
        GestureDetector(
            onTap: (){
                return AppNavigator.push(const NotificationsView());},
            child: const CustomSvg(svg: AppIcons.notifications))
      ],
    );
  }
}
