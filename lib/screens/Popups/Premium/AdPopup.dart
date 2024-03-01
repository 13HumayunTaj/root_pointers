import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:root_pointers/Constants/AppColors.dart';
import 'package:root_pointers/Constants/ImagesClass.dart';
import 'package:root_pointers/screens/Popups/Premium/PremiumEditions2Popup.dart';

AdPopup() {
  Timer(Duration(seconds: 3), () {
    Get.back();
    PremiumEditions2Popup();
  });

  double _progressValue = 0.35;
  Get.dialog(Padding(
    padding: EdgeInsets.symmetric(vertical: Get.height * 0.01),
    child: AlertDialog(
      contentPadding: EdgeInsets.all(0),
      content: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          image: DecorationImage(
            fit: BoxFit.fill,
            image: AssetImage(
              ImagesClass.character1img,
            ),
          ),
        ),
        child: Container(
          padding: EdgeInsets.symmetric(
            horizontal: Get.width * 0.03,
            vertical: Get.height * 0.03,
          ),
          height: double.infinity,
          width: double.infinity,
          decoration: BoxDecoration(
            color: Colors.black.withOpacity(0.5),
            borderRadius: BorderRadius.circular(30),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                mainAxisSize: MainAxisSize.max,
                children: [
                  Text(
                    'Ad',
                    style: TextStyle(
                      color: AppColors.textColor,
                      fontSize: 20,
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Get.back();
                    },
                    child: Icon(
                      Icons.close,
                      size: 30,
                      color: AppColors.textColor,
                    ),
                  )
                ],
              ),
              //
              LinearProgressIndicator(
                minHeight: 10,
                value: _progressValue,
                color: AppColors.secondaryColor,
                backgroundColor: AppColors.textColor,
                borderRadius: BorderRadius.circular(50),
              ),
            ],
          ),
        ),
      ),
    ),
  ));
}
