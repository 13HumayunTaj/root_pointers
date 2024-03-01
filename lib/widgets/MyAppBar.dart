import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../Constants/AppColors.dart';

class MyAppBar extends StatelessWidget {
  const MyAppBar({
    super.key,
    required this.title,
  });
  final String title;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        GestureDetector(
          onTap: () {
            Get.back();
          },
          child: Icon(
            Icons.arrow_back,
            color: AppColors.textColor,
          ),
        ),
        SizedBox(
          width: Get.width * 0.05,
        ),
        Text(
          title,
          // 'Participants',
          style: TextStyle(
            color: AppColors.textColor,
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }
}
