import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../Constants/AppColors.dart';
import '../Models/SubscriptionPlanList.dart';
import 'PointWidget.dart';

class BuySubscriptionTile extends StatelessWidget {
  const BuySubscriptionTile({
    super.key,
    required this.index,
  });

  final int index;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 8),
      width: double.infinity,
      padding: EdgeInsets.symmetric(
        horizontal: Get.width * 0.05,
        vertical: Get.height * 0.01,
      ),
      decoration: BoxDecoration(
        color: AppColors.borderGreyColor.withOpacity(0.15),
        border: Border.all(
          color: AppColors.borderGreyColor,
        ),
        borderRadius: BorderRadius.circular(50),
      ),
      child: Row(
        children: [
          //point
          PointWidget(
            isFill: SubscriptionPlanList[index]['isSelected'],
          ),
          SizedBox(
            width: Get.width * 0.03,
          ),

          //text
          Expanded(
            child: Text(
              SubscriptionPlanList[index]['price'],
              style: TextStyle(
                fontSize: 16,
                color: AppColors.textGreenColor,
              ),
            ),
          ),

          Text(
            SubscriptionPlanList[index]['period'],
            style: TextStyle(
              fontSize: 10,
              color: Color(0xff575151),
            ),
          ),
        ],
      ),
    );
  }
}
