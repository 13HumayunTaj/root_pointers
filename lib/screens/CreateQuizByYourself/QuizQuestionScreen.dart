import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:root_pointers/Constants/AppColors.dart';
import 'package:root_pointers/Constants/TextStylesClass.dart';
import 'package:root_pointers/screens/CreateQuizByYourself/ResultScreen.dart';
import 'package:root_pointers/screens/ResultAutoScreen.dart';
import 'package:root_pointers/screens/Spin/QuizStartScreen.dart';
import 'package:root_pointers/widgets/MyButton.dart';
import 'package:root_pointers/widgets/PercentageBarWidget.dart';

import '../../Models/QuestionsList.dart';
import '../../Navigations/NavigationController.dart';

class QuizQuestionScreen extends StatefulWidget {
  const QuizQuestionScreen({super.key});

  @override
  State<QuizQuestionScreen> createState() => _QuizQuestionScreenState();
}

class _QuizQuestionScreenState extends State<QuizQuestionScreen> {
  //

  int navigationNumber =
      Get.find<NavigationController>().navigationNumber.value;

  //
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: Color(value),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              navigationNumber == 12
                  ? AppColors.bgDarkGreenColor
                  : navigationNumber == 11
                      ? AppColors.gradientColor5
                      : navigationNumber == 4 ||
                              navigationNumber == 13 ||
                              navigationNumber == 14
                          ? AppColors.gradientColor3
                          : AppColors.gradientColor1,

              //
              navigationNumber == 12
                  ? AppColors.bgDarkGreenColor
                  : navigationNumber == 11
                      ? AppColors.gradientColor6
                      : navigationNumber == 4 || navigationNumber == 13
                          ? AppColors.gradientColor4
                          : AppColors.gradientColor2,
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: Center(
          child: Column(
            children: [
              //SizedBox(height: Get.height * 0.10),
              Spacer(),
              Text(
                'Answer the question',
                style: TextStyle(
                  color: AppColors.textColor,
                  fontSize: 26,
                ),
              ),
              SizedBox(height: Get.height * 0.035),
              Text(
                '01/0' + QuestionsList.length.toString(),
                style: TextStylesClass.QuestionNoStyle,
              ),
              SizedBox(height: Get.height * 0.025),

              //percentage bar
              PercentageBarWidget(
                barColor: AppColors.secondaryColor,
                obtained: 1,
                total: QuestionsList.length,
              ),
              SizedBox(height: Get.height * 0.03),

              //text => Question Statement
              Padding(
                padding: EdgeInsets.symmetric(horizontal: Get.width * 0.1),
                child: Text(
                  //question no __ statement
                  //'Who is most likely to kill someone?',

                  //QuestionList[QNo.]['key']
                  QuestionsList[0]['QStatement'],

                  style: TextStylesClass.QuestionStatementStyle,
                  textAlign: TextAlign.center,
                ),
              ),
              SizedBox(height: Get.height * 0.03),

              //mcqs
              for (int mcqNo = 1;
                  mcqNo <= QuestionsList[0]['NoOfMcqs'];
                  mcqNo++)
                Container(
                  //outer container to give border
                  margin: EdgeInsets.symmetric(
                      horizontal: Get.width * 0.1, vertical: 6),
                  padding: EdgeInsets.symmetric(vertical: 8, horizontal: 12),
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: navigationNumber == 11
                        ? Color(0xffCAC5C5).withOpacity(0.08)
                        : null,
                    borderRadius: BorderRadius.circular(100),
                    border: Border.all(
                      color: AppColors.lightWhiteColor,
                    ),
                  ),

                  //
                  child: Row(
                    children: [
                      SizedBox(width: 20),
                      Container(
                        padding: EdgeInsets.all(4),
                        height: 25,
                        width: 25,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.white,
                          image: DecorationImage(
                            image: AssetImage(
                              QuestionsList[0]['Mcq${mcqNo}img'],
                            ),
                          ),
                        ),
                      ),
                      SizedBox(width: 12),
                      Expanded(
                        child: Text(
                          // MCQ number
                          QuestionsList[0]['Mcq${mcqNo}'],
                          style: TextStylesClass.MCQStyle,
                        ),
                      ),
                    ],
                  ),
                ),

              Spacer(),

              //mybutton
              Padding(
                padding: EdgeInsets.symmetric(horizontal: Get.width * 0.1),
                child: MyButton(
                  text: 'Done',
                  onTap: () {
                    if (navigationNumber == 11) {
                      Get.to(
                        () => QuizStartScreen(),
                      );
                    } else if (navigationNumber == 4 ||
                        navigationNumber == 13 ||
                        navigationNumber == 14) {
                      Get.to(
                        () => ResultAutoScreen(),
                      );
                    } else {
                      Get.to(
                        () => ResultScreen(),
                      );
                    }
                  },
                ),
              ),
              // ElevatedButton(
              //     onPressed: () {
              //       print('$navigationNumber');
              //     },
              //     child: Text('checking')),
              Spacer()
            ],
          ),
        ),
      ),
    );
  }
}
