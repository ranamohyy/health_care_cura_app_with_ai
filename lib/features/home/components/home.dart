import 'package:cura/core/app_navigator.dart';
import 'package:cura/core/helpers/CustomSvg.dart';
import 'package:cura/core/helpers/app_assets.dart';
import 'package:flutter/material.dart';
import '../../../core/helpers/styles.dart';
import '../../details_screen/view.dart';
import '../../notifications/view.dart';
import '../../reccommended/view.dart';
import '../../widgets/custom_recommendation_card.dart';
import '../../widgets/health_card.dart';
part '../../widgets/custom_container_in_home.dart';
part '../../widgets/custom_hello_and_notificationIcon.dart';

class HomeView extends StatelessWidget {
  HomeView({super.key});
  final List<Map<String, String>> recommendations = [
    {
      "title": "Breast Cancer",
      "description": "Malignant tumor in breast tissue",
      "image": AppImages.hospital
    },
    {
      "title": "Ductal Carcinoma",
      "description": "Cancer starting in milk ducts",
      "image": AppImages.secondRecommendImage
    },
  ];
  List<String> title = [
    "Seasonal allergies or COVID-19",
    "Seasonal allergies or COVID-19"
  ];
  List<String> subTitle = [
    "Washing hands regularly, wearing a mask, and social distancing",
    "Washing hands regularly, wearing a mask, and social distancing"
  ];
  List<String> images = [AppImages.care, AppImages.corona];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      extendBody: true,
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 10,
            ),
            const CustomHelloAndNotificationIcon(),
            const SizedBox(
              height: 30,
            ),
            const ContainerInHome(),
            const SizedBox(
              height: 30,
            ),
            const Text(
              "Take care of your health",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                  children: List.generate(
                2,
                (index) {
                  return GestureDetector(
                    onTap: () {
                      return AppNavigator.push(DetailsView(
                        image: images[index],
                      ));
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: HealthCard(
                          title: title[index],
                          subtitle: subTitle[index],
                          image: images[index]),
                    ),
                  );
                },
              )),
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  "Recommended",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                GestureDetector(
                  onTap: () {
                    AppNavigator.push(RecommendedView());
                  },
                  child: Text(
                    "view all",
                    style: kTextStyle14UnderLine,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 10),
            Row(
              children: [
                Expanded(
                    child: buildRecommendationCard(recommendations[0],
                        viewFromHome: true)),
                const SizedBox(width: 10),
                Expanded(
                    child: buildRecommendationCard(recommendations[1],
                        viewFromHome: true)),
              ],
            ),
          ],
        ),
      ),
    ));
  }
}
