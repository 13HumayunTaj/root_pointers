import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:root_pointers/Constants/AppColors.dart';
import 'package:root_pointers/screens/Popups/Popup1.dart';
import 'package:root_pointers/screens/Popups/SpinPopups/PopupSpin2.dart';

import '../../../widgets/DrinkingSquareWidget.dart';
import '../../../widgets/MinorSquareWidget.dart';

PopupSpin() {
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
            'Select the Game',
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 24),
          ),
        ],
      ),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(height: 15),
          Row(
            children: [
              // minor square
              GestureDetector(
                //naigationNumber is already '10'
                onTap: Popup1Function,
                child: MinorSquareWidget(),
              ),

              // drinking square
              GestureDetector(
                onTap: PopupSpin2,
                child: DrinkingSquareWidget(),
              ),
            ],
          ),
          SizedBox(height: 45),
        ],
      ),
    ),
  );
}
