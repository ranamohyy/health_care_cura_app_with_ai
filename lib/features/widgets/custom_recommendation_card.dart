import 'package:flutter/material.dart';

Widget buildRecommendationCard(Map<String, String> item,{bool viewFromHome=false}) {
  return Padding(
    padding: const EdgeInsets.all(4.0),
    child: Container(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
      decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(color: Colors.white12),
          borderRadius: const BorderRadius.all(Radius.circular(12)),
          boxShadow: const [BoxShadow(blurRadius: 1)]),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          viewFromHome==true?ClipRRect(
      borderRadius: const BorderRadius.all(Radius.circular(12)),
      child: Image.asset(item["image"]!, fit: BoxFit.cover)
  ):
          Expanded(
            child: ClipRRect(
                borderRadius: const BorderRadius.all(Radius.circular(12)),
                child: Image.asset(item["image"]!, fit: BoxFit.cover)),
          ),
          Text(
            item["title"]!,
            textAlign: TextAlign.start,
            style: const TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 4),
          Text(
            item["description"]!,
            style: const TextStyle(fontSize: 14, color: Colors.grey),
            // textAlign: TextAlign.center,
          ),
        ],
      ),
    ),
  );
}
