import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:root_pointers/Constants/ImagesClass.dart';
import 'package:root_pointers/screens/EditionsScreen.dart';
import 'package:root_pointers/screens/HomeScreen.dart';
import '../../../Constants/AppColors.dart';
import '../../../widgets/MyButton.dart';

PremiumEditions2Popup() {
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
            height: Get.height * 0.00,
          ),

          //diamond img
          Image.asset(
            ImagesClass.gift_img,
            height: 74,
            width: 93,
          ),
          SizedBox(
            height: Get.height * 0.015,
          ),

          Text(
            'Congratulations!',
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
              'You got 10 free questions of\n Marvel Edition',
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
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(
            height: Get.height * 0.02,
          ),
          //PaymentOptionWidget
          for (int index = 0; index < 3; index++)
            Column(
              children: [
                Text(
                  'Who is known as the "God of Thunder" in the Marvel Universe?',
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                Divider(),
              ],
            ),
          SizedBox(
            height: Get.height * 0.03,
          ),

          Padding(
            padding: EdgeInsets.symmetric(horizontal: Get.width * 0.0),
            child: MyButton(
              text: 'View All',
              onTap: () {
                Get.offAll(
                  () => HomeScreen(),
                );
              },
            ),
          ),
          SizedBox(height: Get.height * 0.05),
        ],
      ),
    ),
  );
}
