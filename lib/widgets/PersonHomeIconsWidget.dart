import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:root_pointers/screens/HomeScreen.dart';
import 'package:root_pointers/screens/UserScreens/ProfileBottomSheet.dart';

import '../Constants/AppColors.dart';

class PersonHomeIconsWidget extends StatelessWidget {
  const PersonHomeIconsWidget({
    super.key,
    this.PersonIconColor,
    this.PersonIconBGColor,
    this.PersonIconBorderColor,
    this.homeIconColor,
    this.homeIconBGColor,
    this.homeIconBorderColor,
    this.homeIconTap,
    this.PersonIconTap,
  });
  final Color? PersonIconColor;
  final Color? PersonIconBGColor;
  final Color? PersonIconBorderColor;
  final Color? homeIconColor;
  final Color? homeIconBGColor;
  final Color? homeIconBorderColor;
  final void Function()? homeIconTap;
  final void Function()? PersonIconTap;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        //person
        GestureDetector(
          onTap: PersonIconTap ?? ProfileBottomSheet,
          child: Container(
            padding: EdgeInsets.all(4),
            decoration: BoxDecoration(
              color: PersonIconBGColor == null
                  ? AppColors.bgColor
                  : PersonIconBGColor,
              shape: BoxShape.circle,
              border: Border.all(
                color: PersonIconBorderColor ?? AppColors.textColor,
              ),
            ),
            child: Icon(
              Icons.person,
              size: 30,
              color: PersonIconColor == null
                  ? AppColors.textColor
                  : PersonIconColor,
            ),
          ),
        ),
        SizedBox(
          //width: 35,
          width: Get.width * 0.0891,
        ),

        //home
        GestureDetector(
          onTap: homeIconTap ??
              () {
                Get.offAll(
                  () => HomeScreen(),
                );
              },
          child: Container(
            padding: EdgeInsets.all(4),
            decoration: BoxDecoration(
              color:
                  homeIconBGColor == null ? AppColors.bgColor : homeIconBGColor,
              shape: BoxShape.circle,
              border: Border.all(
                color: homeIconBorderColor ?? AppColors.textColor,
              ),
            ),
            child: Icon(
              Icons.home,
              size: 30,
              color:
                  homeIconColor == null ? AppColors.textColor : homeIconColor,
            ),
          ),
        ),
      ],
    );
  }
}
