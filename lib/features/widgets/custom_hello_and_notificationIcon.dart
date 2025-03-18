part of 'package:cura/features/home/components/home.dart';
class CustomHelloAndNotificationIcon extends StatelessWidget {
  const CustomHelloAndNotificationIcon({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const Column(
          spacing: 5,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(),
            Text(
              "Hello",
              style:
              TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            Text(
              "I can help you learn more about your health.",
              style: TextStyle(fontSize: 12, color: Colors.grey),
            ),
          ],
        ),
        GestureDetector(
            onTap: (){
                return AppNavigator.push(const NotificationsView());},
            child: const CustomSvg(svg: AppIcons.notifications))
      ],
    );
  }
}
