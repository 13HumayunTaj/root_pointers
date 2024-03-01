import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:root_pointers/Constants/AppColors.dart';
import 'package:root_pointers/screens/CreateQuizByYourself/CreateQuizByYourself2Screen.dart';
import 'package:root_pointers/widgets/MyButton.dart';
import 'package:root_pointers/widgets/PersonHomeIconsWidget.dart';

class CreateQuizByYourselfScreen extends StatefulWidget {
  const CreateQuizByYourselfScreen({super.key});

  @override
  State<CreateQuizByYourselfScreen> createState() =>
      _CreateQuizByYourselfScreenState();
}

class _CreateQuizByYourselfScreenState
    extends State<CreateQuizByYourselfScreen> {
  //
  List noOfQuestionsList = ['5', '10', '15', '20', '25', '50'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.bgColor,
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              // SizedBox(
              //   height: Get.height * 0.05,
              // ),
              Spacer(),
              Text(
                'Create Quiz',
                style: TextStyle(fontSize: 32, color: AppColors.textColor),
              ),
              SizedBox(
                height: Get.height * 0.03,
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: Get.width * 0.1),
                padding: EdgeInsets.symmetric(horizontal: 40, vertical: 10),
                width: double.infinity,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(
                    color: AppColors.textColor,
                  ),
                ),
                child: Text(
                  'How many questions you want to add in quiz?',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 18, color: AppColors.textColor),
                ),
              ),
              SizedBox(
                height: Get.height * 0.025,
              ),
              ListView.builder(
                shrinkWrap: true,
                itemCount: noOfQuestionsList.length,
                itemBuilder: (context, index) => Container(
                  alignment: Alignment.center,
                  width: double.infinity,
                  margin: EdgeInsets.symmetric(
                      horizontal: Get.width * 0.1, vertical: 4),
                  padding: EdgeInsets.symmetric(vertical: 8),
                  child: Text(
                    '${noOfQuestionsList[index]} ' + 'questions',
                    textAlign: TextAlign.center,
                    style: TextStyle(),
                  ),
                  decoration: BoxDecoration(
                    color: AppColors.textColor,
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
              ),
              //
              Spacer(),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: Get.width * 0.1),
                child: MyButton(
                  text: 'Continue',
                  onTap: () {
                    Get.to(
                      () => CreateQuizByYourself2Screen(),
                    );
                  },
                ),
              ),
              SizedBox(
                height: Get.height * 0.07,
              ),
              PersonHomeIconsWidget(),
              SizedBox(
                height: Get.height * 0.05,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
