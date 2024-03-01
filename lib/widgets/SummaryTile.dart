import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:simple_progress_indicators/simple_progress_indicators.dart';
import '../Constants/AppColors.dart';

class SummaryTile extends StatelessWidget {
  const SummaryTile({
    super.key,
    required this.title,
    required this.image,
    required this.name,
    required this.percentage,
    required this.color,
  });

  final String title;
  final String image;
  final String name;
  final int percentage;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Expanded(
              child: Text(
                title,
                style: TextStyle(
                  color: AppColors.textColor,
                  fontSize: 16,
                ),
              ),
            ),
            Container(
              height: 26,
              width: 26,
              decoration: BoxDecoration(
                color: AppColors.textColor,
                shape: BoxShape.circle,
                image: DecorationImage(
                  fit: BoxFit.fitHeight,
                  image: AssetImage(
                    image,
                  ),
                ),
              ),
            ),
            SizedBox(width: Get.width * 0.015),
            Text(
              name,
              style: TextStyle(
                color: AppColors.textColor,
                fontSize: 13,
              ),
            ),
          ],
        ),
        SizedBox(
          height: Get.height * 0.01,
        ),
        Align(
          alignment: Alignment.centerRight,
          child: Text(
            percentage.toString() + '%',
            style: TextStyle(
              color: AppColors.textColor,
              fontSize: 15,
            ),
          ),
        ),
        SizedBox(
          height: Get.height * 0.01,
        ),
        //progress bar
        ProgressBar(
          value: percentage / 100,
          color: color,
          width: Get.width,
          backgroundColor: AppColors.textColor,
          height: 10,
        ),

        //
        SizedBox(
          height: Get.height * 0.035,
        ),
      ],
    );
  }
}
