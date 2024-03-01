import 'package:flutter/material.dart';

import '../Constants/AppColors.dart';

class PointCreateWidget extends StatelessWidget {
  const PointCreateWidget({
    super.key,
    required this.ScreenIndex,
    required this.hintTextList,
    required this.j,
  });

  final int ScreenIndex;
  final int j;
  final List hintTextList;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          // alignment: Alignment.center,
          height: 7,
          width: 7,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: ScreenIndex >= j
                ? AppColors.secondaryColor
                : AppColors.lightWhiteColor,
          ),
        ),
        SizedBox(width: 4),
        Text(
          hintTextList[j],
          style: TextStyle(
            color: AppColors.lightWhiteColor,
          ),
        ),
      ],
    );
  }
}
