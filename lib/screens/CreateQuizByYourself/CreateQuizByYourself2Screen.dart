import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:root_pointers/Constants/AppColors.dart';
import 'package:root_pointers/Navigations/NavigationController.dart';
import 'package:root_pointers/screens/JoinQuizScreens/PinJoinScreen.dart';
import 'package:root_pointers/widgets/MyButton.dart';
import 'package:root_pointers/widgets/PersonHomeIconsWidget.dart';

class CreateQuizByYourself2Screen extends StatefulWidget {
  const CreateQuizByYourself2Screen({super.key});

  @override
  State<CreateQuizByYourself2Screen> createState() =>
      _CreateQuizByYourself2ScreenState();
}

class _CreateQuizByYourself2ScreenState
    extends State<CreateQuizByYourself2Screen> {
  //
  List noOfChoicesList = ['2', '3', '4', '5'];

  // final NavigationController navigationController = Get.find(NavigationController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.bgColor,
      body: Center(
        child: Column(
          children: [
            // SizedBox(
            //   height: Get.height * 0.07,
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
                'How many answer choices would like to add in each question?',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 18, color: AppColors.textColor),
              ),
            ),
            ListView.builder(
              shrinkWrap: true,
              itemCount: noOfChoicesList.length,
              itemBuilder: (context, index) => Container(
                alignment: Alignment.center,
                width: double.infinity,
                margin: EdgeInsets.symmetric(
                    horizontal: Get.width * 0.1, vertical: 4),
                padding: EdgeInsets.symmetric(vertical: 8),
                child: Text(
                  '${noOfChoicesList[index]} ' + 'choices',
                  textAlign: TextAlign.center,
                  style: TextStyle(),
                ),
                decoration: BoxDecoration(
                  color: AppColors.textColor,
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
            ),
            Spacer(),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: Get.width * 0.1),
              child: MyButton(
                text: 'Continue',
                onTap: () {
                  NavigationController().navigationNumber.value = 1;
                  Get.to(
                    () => PinJoinScreen(),
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
    );
  }
}
