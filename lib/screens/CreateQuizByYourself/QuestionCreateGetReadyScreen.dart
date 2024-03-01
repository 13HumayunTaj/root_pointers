import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:root_pointers/Constants/AppColors.dart';
import 'package:root_pointers/Constants/ImagesClass.dart';
import 'package:root_pointers/Constants/TextStylesClass.dart';
import 'package:root_pointers/screens/CreateQuizByYourself/QuizQuestionScreen.dart';
import 'package:root_pointers/widgets/MyButton.dart';
import 'package:root_pointers/widgets/PersonHomeIconsWidget.dart';

import '../../Navigations/NavigationController.dart';

class QuestionCreateGetReadyScreen extends StatefulWidget {
  const QuestionCreateGetReadyScreen({super.key});

  @override
  State<QuestionCreateGetReadyScreen> createState() =>
      _QuestionCreateGetReadyScreenState();
}

class _QuestionCreateGetReadyScreenState
    extends State<QuestionCreateGetReadyScreen> {
  //
  int navigationNumber =
      Get.find<NavigationController>().navigationNumber.value;
  //
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: navigationNumber == 13
          ? AppColors.bgDeepPurpleColor
          : navigationNumber == 11
              ? AppColors.bgDarkGreenColor
              : AppColors.bgColor,
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              // Spacer(),
              SizedBox(
                height: Get.height * 0.12,
              ),
              Text(
                'Get Ready!',
                style: TextStyle(fontSize: 30, color: AppColors.textColor),
              ),
              SizedBox(
                //height: 15,
                height: Get.height * 0.018,
              ),
              Text(
                'The Quiz Will Start Soon',
                style: TextStylesClass.style2,
              ),
              //Spacer(),
              SizedBox(
                height: Get.height * 0.05,
              ),
              Image.asset(
                ImagesClass.sandwatchimg,
                height: Get.height * 0.28,
                width: Get.width * 0.28,
              ),
              //Spacer(),
              SizedBox(
                height: Get.height * 0.05,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: Get.width * 0.1),
                child: MyButton(
                  text: 'Start',
                  onTap: () {
                    Get.to(
                      () => QuizQuestionScreen(),
                    );
                  },
                ),
              ),
              Spacer(),
              PersonHomeIconsWidget(
                PersonIconBGColor: navigationNumber == 13
                    ? AppColors.bgDeepPurpleColor
                    : navigationNumber == 11
                        ? AppColors.bgDarkGreenColor
                        : null,
                homeIconBGColor: navigationNumber == 13
                    ? AppColors.bgDeepPurpleColor
                    : navigationNumber == 11
                        ? AppColors.bgDarkGreenColor
                        : null,
              ),
              SizedBox(height: Get.height * 0.05),
            ],
          ),
        ),
      ),
    );
  }
}
