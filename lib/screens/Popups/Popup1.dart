import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:root_pointers/Navigations/NavigationController.dart';
import 'package:root_pointers/screens/CreateQuizByYourself/CreateQuizByYourselfScreen.dart';
import 'package:root_pointers/screens/JoinQuizScreens/PinJoinScreen.dart';
import 'package:root_pointers/screens/Popups/Popup3.dart';
import '../../Constants/AppColors.dart';
import '../../widgets/MyButton.dart';

Popup1Function() {
  int navigationNumber =
      Get.find<NavigationController>().navigationNumber.value;
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
            'How do you want to create your quiz?',
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
              text: 'By Yourself',
              onTap: () {
                if (navigationNumber == 10) {
                  Get.find<NavigationController>().navigationNumber.value = 11;
                  Get.to(
                    () => PinJoinScreen(),
                  );
                } else {
                  Get.to(
                    () => CreateQuizByYourselfScreen(),
                  );
                }
              },
            ),
          ),
          SizedBox(height: Get.height * 0.015),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: Get.width * 0.07),
            child: MyButton(
              text: 'Auto-generated',
              onTap: navigationNumber == 10
                  ? () {
                      //naigationNumber 12
                      Get.find<NavigationController>().navigationNumber.value =
                          12;
                      Get.to(
                        () => PinJoinScreen(),
                      );
                    }
                  : Popup3Function,
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
