import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:root_pointers/Constants/AppColors.dart';
import 'package:root_pointers/Constants/ImagesClass.dart';
import 'package:root_pointers/Navigations/NavigationController.dart';
import 'package:root_pointers/screens/CreateQuizByYourself/ResultsWinScreen.dart';
import 'package:root_pointers/screens/HomeScreen.dart';
import 'package:root_pointers/screens/Spin/QuizStartScreen.dart';
import 'package:root_pointers/widgets/MyButton.dart';
import '../../Models/WinnersList.dart';
import '../../widgets/WinnerBarWidget.dart';

class ResultScreen extends StatefulWidget {
  const ResultScreen({super.key});

  @override
  State<ResultScreen> createState() => _ResultScreenState();
}

class _ResultScreenState extends State<ResultScreen> {
  //
  int navigationNumber =
      Get.find<NavigationController>().navigationNumber.value;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: navigationNumber == 12
          ? AppColors.bgDarkGreenColor
          : AppColors.bgGreenColor,
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
                  'You have to take the challenge!',
                  style: TextStyle(fontSize: 24, color: AppColors.textColor),
                  textAlign: TextAlign.center,
                ),
              ),
              SizedBox(height: Get.height * 0.05),

              SizedBox(
                height: Get.height * 0.33,
                child: ListView.builder(
                  physics: BouncingScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: winnersList.length,
                  itemBuilder: (context, index) =>
                      WinnerBarWidget(winnersList, index),
                ),
              ),
              //Spacer(),

              //
              Image.asset(
                ImagesClass.resultImg,
                height: Get.height * 0.20,
                width: Get.width * 0.50,
              ),
              SizedBox(height: Get.height * 0.025),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: Get.width * 0.1),
                child: MyButton(
                  text: 'Next Question',
                  onTap: () {
                    navigationNumber == 12
                        ? Get.to(
                            QuizStartScreen(),
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
