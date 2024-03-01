import 'package:flutter/material.dart';

import '../Constants/AppColors.dart';
import '../Constants/ImagesClass.dart';

class MinorSquareWidget extends StatelessWidget {
  const MinorSquareWidget({
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
            ImagesClass.minor_img,
            height: 50,
            width: 38,
          ),
          SizedBox(height: 8),
          Text(
            'Minors in audience',
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
