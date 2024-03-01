import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../Constants/AppColors.dart';
import '../Models/HistoryList.dart';

class HistoryTile extends StatelessWidget {
  final int index;

  const HistoryTile({
    super.key,
    required this.index,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: Get.height * 0.01),
      padding: EdgeInsets.symmetric(
        horizontal: Get.width * 0.07,
        vertical: Get.height * 0.017,
      ),
      decoration: BoxDecoration(
        color: AppColors.textColor,
        borderRadius: BorderRadius.circular(50),
      ),
      child: Row(
        children: [
          Container(
            height: 30,
            width: 30,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: AppColors.bgColor,
              image: DecorationImage(
                image: AssetImage(
                  HistoryList[index]['image'],
                ),
              ),
            ),
          ),
          // Image.asset(
          //   ImagesClass.user_profile_img,
          //   height: 30,
          // ),
          SizedBox(
            width: Get.width * 0.02,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  HistoryList[index]['title'],
                  style: TextStyle(
                    fontSize: 14,
                  ),
                ),
                Text(
                  HistoryList[index]['timeAgo'] + ' ago',
                  style: TextStyle(
                    fontSize: 10,
                  ),
                ),
              ],
            ),
          ),
          Text(
            'View Participants',
            style: TextStyle(
              fontSize: 11,
              decoration: TextDecoration.underline,
            ),
          ),
        ],
      ),
    );
  }
}
