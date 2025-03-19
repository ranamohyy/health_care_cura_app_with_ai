import 'package:flutter/material.dart';

import '../../core/helpers/CustomSvg.dart';
Widget buildProfileOption(
    String icon, String title, void Function()? onTap,bool showDivider,
    {bool isLogout = false}) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 16.0),
    child: Column(
      children: [
        ListTile(
            leading: CustomSvg(svg: icon,height: 20,width: 20,
              color: isLogout ? Colors.red : Colors.black,
            ),
            title: Text(
              title,
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w500,
                color: isLogout ? Colors.red : Colors.black,
              ),
            ),
            trailing: !isLogout
                ? const Icon(Icons.arrow_forward_ios,
                size: 16, color: Colors.black54)
                : const SizedBox(),
            onTap: onTap),
        const SizedBox(
          height: 12,
        ),
        showDivider==true?Divider(height: 1, color: Colors.grey.shade300):const SizedBox(),
      ],
    ),
  );
}
