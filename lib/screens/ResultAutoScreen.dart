import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:root_pointers/screens/Spin/QuizStartScreen.dart';

import '../Constants/AppColors.dart';
import '../Constants/ImagesClass.dart';
import '../Models/WinnersList.dart';
import '../Navigations/NavigationController.dart';
import '../widgets/MyButton.dart';
import '../widgets/WinnerBarWidget.dart';
import 'CreateQuizByYourself/ResultsWinScreen.dart';
import 'HomeScreen.dart';

class ResultAutoScreen extends StatefulWidget {
  const ResultAutoScreen({super.key});

  @override
  State<ResultAutoScreen> createState() => _ResultAutoScreenState();
}

class _ResultAutoScreenState extends State<ResultAutoScreen> {
  int navigationNumber =
      Get.find<NavigationController>().navigationNumber.value;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.bgDeepPurpleColor,
      body: SafeArea(
        child: Container(
          alignment: Alignment.center,
          child: Column(
            children: [
              //SizedBox(height: Get.height * 0.07),
              Spacer(),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: Get.width * 0.1),
                child: Text(
                  'Veronica Park\nTake a shot!',
                  style: TextStyle(fontSize: 30, color: AppColors.textColor),
                  textAlign: TextAlign.center,
                ),
              ),
              SizedBox(height: Get.height * 0.05),

              WinnerBarWidget(winnersList, 1),
              Spacer(),

              //
              Image.asset(
                ImagesClass.result_glass,
                height: Get.height * 0.35,
                width: Get.width * 0.50,
              ),
              SizedBox(height: Get.height * 0.025),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: Get.width * 0.1),
                child: MyButton(
                  text: navigationNumber == 13 ? 'Spin Wheel' : 'Next Question',
                  onTap: () {
                    navigationNumber == 13 || navigationNumber == 14
                        ? Get.to(
                            () => QuizStartScreen(),
                          )
                        : Get.to(
                            () => ResultsWinScreen(),
                          );
                  },
                ),
              ),
              SizedBox(height: Get.height * 0.025),
              GestureDetector(
                onTap: () {
                  Get.offAll(
                    () => HomeScreen(),
                  );
                },
                child: Text(
                  'Exit Quiz',
                  style: TextStyle(
                    fontSize: 16,
                    color: AppColors.lightWhiteColor,
                    decoration: TextDecoration.underline,
                    decorationColor: AppColors.lightWhiteColor,
                    //decorationStyle: textdec,
                  ),
                ),
              ),
              //SizedBox(height: Get.height * 0.05),
              Spacer(),
            ],
          ),
        ),
      ),
    );
  }
}
