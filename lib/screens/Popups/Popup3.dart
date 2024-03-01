import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:root_pointers/Navigations/NavigationController.dart';
import 'package:root_pointers/screens/JoinQuizScreens/PinJoinScreen.dart';
import 'package:root_pointers/screens/Popups/Popup5.dart';

import '../../Constants/AppColors.dart';
import '../../widgets/MyButton.dart';

Popup3Function() {
  NavigationController navigationController = Get.find<NavigationController>();
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
          Text(
            'Is there any minor in your players?',
            textAlign: TextAlign.center,
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
            padding: EdgeInsets.symmetric(horizontal: Get.width * 0.07),
            child: MyButton(
              text: 'Yes',
              onTap: () {
                navigationController.navigationNumber.value = 2;
                Get.to(
                  () => PinJoinScreen(),
                );
              },
            ),
          ),
          SizedBox(height: Get.height * 0.015),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: Get.width * 0.07),
            child: MyButton(
              text: 'No',
              onTap: Popup5Function,
              ButtonColor: AppColors.textColor,
              StringColor: Colors.black,
            ),
          ),
          SizedBox(height: Get.height * 0.045),
        ],
      ),
    ),
  );
}
