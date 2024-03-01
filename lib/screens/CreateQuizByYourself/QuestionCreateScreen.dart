import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:root_pointers/Constants/AppColors.dart';
import 'package:root_pointers/Constants/ImagesClass.dart';
import 'package:root_pointers/screens/CreateQuizByYourself/QuestionCreateGetReadyScreen.dart';
import 'package:root_pointers/widgets/MyButton.dart';
import 'package:root_pointers/widgets/PercentageBarWidget.dart';

import '../../Navigations/NavigationController.dart';
import '../../widgets/PointCreateWidget.dart';

class QuestionCreateScreen extends StatefulWidget {
  const QuestionCreateScreen({super.key});

  @override
  State<QuestionCreateScreen> createState() => _QuestionCreateScreenState();
}

class _QuestionCreateScreenState extends State<QuestionCreateScreen> {
  int ScreenIndex = 0;
  int TotalScreens = 3;
  String hintText = 'Truth';
  List hintTextList = ['Truth', 'Challenge', 'Secret'];
  List hintTextList2 = ['Truth', 'Roast', 'Secret'];
  List hintTextList3 = ['Roast', 'Challenge', 'Truth'];

  int navigationNumber =
      Get.find<NavigationController>().navigationNumber.value;

  CheckScreenIndexFunction() {
    print('function is working');

    if (ScreenIndex < TotalScreens) {
      ScreenIndex++;
    }
    print('$ScreenIndex');
    if (ScreenIndex < TotalScreens) {
      if (ScreenIndex == 0) {
        hintText = hintTextList[0];
        setState(() {});
        return;
      }

      if (ScreenIndex == 1) {
        hintText = navigationNumber == 11 || navigationNumber == 13
            ? hintTextList2[1]
            : hintTextList[1];
        setState(() {});
        return;
      }
      if (ScreenIndex == 2) {
        hintText = hintTextList[2];
        setState(() {});
        return;
      }
    }
    if (ScreenIndex == TotalScreens) {
      Get.to(
        () => QuestionCreateGetReadyScreen(),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: navigationNumber == 13
          ? AppColors.bgDeepPurpleColor
          : navigationNumber == 11
              ? AppColors.bgDarkGreenColor
              : AppColors.bgColor,
      body: SafeArea(
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          reverse: true,
          child: Center(
            child: Column(
              children: [
                // ElevatedButton(
                //     onPressed: () {
                //       print('$navigationNumber');
                //     },
                //     child: Text('data')),
                SizedBox(
                  height: Get.height * 0.075,
                ),
                Image.asset(
                  navigationNumber == 13
                      ? ImagesClass.cheers_img
                      : navigationNumber == 11
                          ? ImagesClass.qcreate_img1
                          : ImagesClass.questionmark,
                  height: 150,
                ),
                SizedBox(
                  height: Get.height * 0.03,
                ),
                Text(
                  '0' + '${ScreenIndex + 1}' + '/' + '0' + '$TotalScreens',
                  style: TextStyle(
                    color: AppColors.textColor,
                  ),
                ),
                SizedBox(height: Get.height * 0.03),
                PercentageBarWidget(
                  barColor: AppColors.secondaryColor,
                  obtained: ScreenIndex + 1,
                  total: TotalScreens,
                ),
                SizedBox(height: Get.height * 0.04),
                //row truth, challenge, secret
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: Get.width * 0.1),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      for (int j = 0; j < TotalScreens; j++)
                        PointCreateWidget(
                          ScreenIndex: ScreenIndex,
                          hintTextList: navigationNumber == 11
                              ? hintTextList2
                              : hintTextList,
                          j: j,
                        ),
                    ],
                  ),
                ),

                SizedBox(height: Get.height * 0.035),

                //big textfield
                Container(
                  margin: EdgeInsets.symmetric(horizontal: Get.width * 0.1),
                  padding: EdgeInsets.all(8),
                  //height: 180,
                  height: Get.height * 0.28,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    border: Border.all(
                      color: AppColors.lightWhiteColor,
                    ),
                  ),
                  child: TextField(
                    maxLines: 100,
                    style: TextStyle(color: AppColors.lightWhiteColor),
                    cursorColor: AppColors.lightWhiteColor,
                    //cursorHeight: 25,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: 'Enter $hintText',
                      hintStyle: TextStyle(
                        color: AppColors.lightWhiteColor.withOpacity(0.5),
                        //fontSize: 14,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: Get.height * 0.04),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: Get.width * 0.1),
                  child: MyButton(
                    text: 'Next',
                    onTap: CheckScreenIndexFunction,
                  ),
                ),
                SizedBox(height: Get.height * 0.05),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
