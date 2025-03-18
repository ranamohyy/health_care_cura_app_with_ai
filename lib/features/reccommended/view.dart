import 'package:cura/core/helpers/app_assets.dart';
import 'package:cura/features/widgets/custom_app_bar.dart';
import 'package:flutter/material.dart';
class RecommendedView extends StatelessWidget {
   RecommendedView({super.key});
   final List<Map<String, String>> recommendations = [
     {"title": "Breast Cancer", "description": "Malignant tumor in breast tissue", "image": AppImages.hospital},
     {"title": "Ductal Carcinoma", "description": "Cancer starting in milk ducts", "image":AppImages.secondRecommendImage},
     {"title": "Lobular Carcinoma", "description": "Cancer starting in breast lobules", "image": AppImages.thirdRecommendImage},
     {"title": "Heart Failure", "description": "The heart can't pump blood effectively", "image": AppImages.fourthRecommendImage},
     {"title": "Asthma", "description": "Airway inflammation leading to breathing difficulties", "image": AppImages.fifthRecommendImage},
     {"title": "Diabetic Retinopathy", "description": "Eye damage from high blood sugar", "image":AppImages.sixRecommendImage},
     {"title": "Breast cancer", "description": "Malignant tumor in breast tissue", "image":AppImages.sevenRecommendImage},
     {"title": "Breast cancer", "description": "Malignant tumor in breast tissue", "image": AppImages.eightRecommendImage},
     {"title": "Asthma", "description": "Airway inflammation leading to breathing difficulties", "image": AppImages.nineRecommendImage},
     {"title": "Asthma", "description": "Airway inflammation leading to breathing difficulties", "image": AppImages.tenRecommendImage},
   ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(title: "Recommended"),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
            childAspectRatio: 0.8,
          ),
          itemCount: recommendations.length,
          itemBuilder: (context, index) {
            return _buildRecommendationCard(recommendations[index]);
          },
        ),
      ),
    );
  }
  Widget _buildRecommendationCard(Map<String, String> item) {
    return Card(
      color: Colors.white,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      elevation: 1,
      child: Column(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(0),
              child: Image.asset(item["image"]!, fit: BoxFit.cover),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Text(
                  item["title"]!,
                  style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 4),
                Text(
                  item["description"]!,
                  style: const TextStyle(fontSize: 14, color: Colors.grey),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

}




