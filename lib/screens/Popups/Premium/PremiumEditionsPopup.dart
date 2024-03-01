import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:root_pointers/Constants/ImagesClass.dart';
import '../../../Constants/AppColors.dart';
import '../../../widgets/MyButton.dart';
import 'AdPopup.dart';
import 'BuySubscriptionPopup.dart';

PremiumEditionsPopup() {
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

          //gift img
          Image.asset(
            ImagesClass.gift_img,
            height: 102,
            width: 98,
          ),
          SizedBox(
            height: Get.height * 0.015,
          ),

          Text(
            'Rewards',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.w600,
            ),
          ),
        ],
      ),
      content: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(
            height: Get.height * 0.02,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: Get.width * 0.0),
            child: MyButton(
              text: 'Buy Subscription',
              onTap: BuySubscriptionPopup,
            ),
          ),
          SizedBox(height: Get.height * 0.03),
          GestureDetector(
            onTap: AdPopup,
            child: Text(
              'Watch Add',
              textAlign: TextAlign.center,
              style: TextStyle(
                decoration: TextDecoration.underline,
                fontSize: 13,
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
          SizedBox(height: Get.height * 0.05),
        ],
      ),
    ),
  );
}
