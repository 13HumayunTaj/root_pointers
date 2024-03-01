import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:root_pointers/Navigations/NavigationController.dart';
import 'package:root_pointers/screens/JoinQuizScreens/PinJoinScreen.dart';

import '../../Constants/AppColors.dart';
import '../../widgets/MyButton.dart';

Popup5Function() {
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
            'Do you want to play drinking game?',
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
                Get.find<NavigationController>().navigationNumber.value = 4;
                Get.to(
                  () => PinJoinScreen(),
                );
              },
              ButtonColor: AppColors.textColor,
              StringColor: Colors.black,
            ),
          ),
          SizedBox(height: Get.height * 0.015),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: Get.width * 0.07),
            child: MyButton(
              text: 'No',
              onTap: () {
                Get.find<NavigationController>().navigationNumber.value = 3;
                Get.to(
                  () => PinJoinScreen(),
                );
              },
              // ButtonColor: AppColors.textColor,
              // StringColor: Colors.black,
            ),
          ),
          SizedBox(height: Get.height * 0.045),
        ],
      ),
    ),
  );
}
