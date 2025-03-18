import 'package:flutter/material.dart';

Widget buildTeamMember(String name, String role, String imagePath) {
  return ListTile(
    leading: CircleAvatar(backgroundImage: AssetImage(imagePath)),
    title: Text(name, style: const TextStyle(fontWeight: FontWeight.bold)),
    subtitle: Text(role),
  );
}
