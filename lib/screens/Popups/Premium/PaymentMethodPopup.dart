import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:root_pointers/Constants/ImagesClass.dart';
import 'package:root_pointers/screens/EditionsScreen.dart';
import 'package:root_pointers/screens/HomeScreen.dart';
import '../../../Constants/AppColors.dart';
import '../../../Models/PaymentMethodsList.dart';
import '../../../Navigations/NavigationController.dart';
import '../../../widgets/MyButton.dart';
import '../../../widgets/PaymentOptionWidget.dart';

PaymentMethodPopup() {
  final NavigationController navigationController =
      Get.put(NavigationController());
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
              child: Icon(Icons.close, size: 30),
            ),
          ),
          SizedBox(
            height: Get.height * 0.00,
          ),

          //diamond img
          Image.asset(
            ImagesClass.payment_img,
            height: 74,
            width: 93,
          ),
          SizedBox(
            height: Get.height * 0.015,
          ),

          Text(
            'Select a Method',
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
          //PaymentOptionWidget
          for (int index = 0; index < PaymentMethodsList.length; index++)
            PaymentOptionWidget(index: index),

          Spacer(),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: Get.width * 0.0),
            child: MyButton(
              text: 'Continue',
              onTap: () {
                Get.offAll(
                  () => HomeScreen(),
                );
                // navigationController.navigationNumber.value = 1;
              },
            ),
          ),
          SizedBox(height: Get.height * 0.05),
        ],
      ),
    ),
  );
}
