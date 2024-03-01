import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:root_pointers/Constants/ImagesClass.dart';
import '../../../Constants/AppColors.dart';
import '../../../Models/SubscriptionPlanList.dart';
import '../../../widgets/BuySubscriptionTile.dart';
import '../../../widgets/MyButton.dart';
import 'PaymentMethodPopup.dart';

BuySubscriptionPopup() {
  Get.dialog(
    AlertDialog(
      backgroundColor: AppColors.textColor,
      title: Column(
        children: [
          Container(
            alignment: Alignment.topRight,
            child: GestureDetector(
                onTap: () {
                  Get.back();
                },
                child: Icon(Icons.close, size: 30)),
          ),
          SizedBox(
            height: Get.height * 0.02,
          ),

          //diamond img
          Image.asset(
            ImagesClass.premium_diamond_img,
            height: 50,
            width: 54,
          ),
          SizedBox(
            height: Get.height * 0.015,
          ),

          Text(
            'Choose Your Plan',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w600,
            ),
          ),
          SizedBox(height: 8),

          Padding(
            padding: EdgeInsets.symmetric(horizontal: Get.width * 0.1),
            child: Text(
              'Start with 3 days free trail upgrade or downgrade anytime',
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: 10,
                  fontWeight: FontWeight.w400,
                  color: Color(0xff717171)),
            ),
          ),
        ],
      ),
      content: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        children: [
          SizedBox(
            height: Get.height * 0.02,
          ),
          //buy subscription tile
          for (int index = 0; index < SubscriptionPlanList.length; index++)
            GestureDetector(
              onTap: () {
                for (int j = 0; j < SubscriptionPlanList.length; j++) {
                  index == j
                      ? SubscriptionPlanList[index]['isSelected'] = true
                      : SubscriptionPlanList[j]['isSelected'] = false;
                }
                Get.back();
                BuySubscriptionPopup();
              },
              child: BuySubscriptionTile(index: index),
            ),

          Spacer(),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: Get.width * 0.0),
            child: MyButton(
              text: 'Continue',
              onTap: PaymentMethodPopup,
            ),
          ),
          SizedBox(height: Get.height * 0.05),
        ],
      ),
    ),
  );
}
