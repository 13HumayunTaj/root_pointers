import 'package:flutter/material.dart';
import '../Constants/AppColors.dart';
import '../Constants/ImagesClass.dart';

class DrinkingSquareWidget extends StatelessWidget {
  const DrinkingSquareWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 10),
      padding: EdgeInsets.symmetric(horizontal: 8),
      alignment: Alignment.center,
      height: 116,
      width: 106,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: AppColors.offWhite,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            ImagesClass.drinking_img,
            height: 44,
            width: 55,
          ),
          SizedBox(height: 8),
          Text(
            'Drinking\nWheel',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 10,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
