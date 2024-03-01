import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:root_pointers/Constants/AppColors.dart';
import 'package:root_pointers/Constants/ImagesClass.dart';
import 'package:root_pointers/Navigations/NavigationController.dart';
import 'package:root_pointers/screens/CreateQuizByYourself/QuestionCreateScreen.dart';
import 'package:root_pointers/screens/CreateQuizByYourself/QuizQuestionScreen.dart';
import 'package:root_pointers/widgets/MyButton.dart';
import 'package:root_pointers/widgets/PersonHomeIconsWidget.dart';

class CreateQuizParicipantsScreen extends StatefulWidget {
  const CreateQuizParicipantsScreen({super.key});

  @override
  State<CreateQuizParicipantsScreen> createState() =>
      _CreateQuizParicipantsScreenState();
}

class _CreateQuizParicipantsScreenState
    extends State<CreateQuizParicipantsScreen> {
  //

  List participantsList = [
    ['You', 'assets/images/join-quiz/doremon.png'],
    ['April John', 'assets/images/join-quiz/nobita.png'],
    ['Veronica Park', 'assets/images/join-quiz/shizuka.png'],
    ['Jonathon Roye', 'assets/images/join-quiz/salman.png'],
  ];

  int navigationNumber =
      Get.find<NavigationController>().navigationNumber.value;

  //
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: navigationNumber == 4 ||
              navigationNumber == 13 ||
              navigationNumber == 14
          ? AppColors.bgDeepPurpleColor
          : navigationNumber == 11 || navigationNumber == 12
              ? AppColors.bgDarkGreenColor
              : AppColors.bgColor,
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              Spacer(),
              Image.asset(
                navigationNumber == 2
                    ? ImagesClass.autoparti_img2
                    : navigationNumber == 3
                        ? ImagesClass.autoparti_img3
                        : navigationNumber == 4
                            ? ImagesClass.autoparti_img4
                            : navigationNumber == 11 ||
                                    navigationNumber == 12 ||
                                    navigationNumber == 13 ||
                                    navigationNumber == 14
                                ? ImagesClass.autoparti_img11
                                : ImagesClass.createQuiz4,
                height: Get.height * 0.27,
                //width: Get.width * 500,
              ),

              SizedBox(
                height: navigationNumber == 2
                    ? 0
                    : navigationNumber == 3
                        ? 10
                        : 25,
              ),
              //participants list
              Container(
                margin: EdgeInsets.symmetric(horizontal: Get.width * 0.1),
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: navigationNumber == 4 ||
                          navigationNumber == 11 ||
                          navigationNumber == 12 ||
                          navigationNumber == 13 ||
                          navigationNumber == 14
                      ? AppColors.textColor.withOpacity(0.08)
                      : Color(0xff359699).withOpacity(0.6),
                  borderRadius: BorderRadius.circular(30),
                ),
                child: Column(
                  children: [
                    Text(
                      'Participants',
                      style: TextStyle(
                        fontSize: 16,
                        color: AppColors.textColor,
                      ),
                    ),
                    SizedBox(height: 4),
                    Container(
                      //color: Colors.green,
                      height: Get.height * 0.26,
                      child: ListView.builder(
                        shrinkWrap: true,
                        itemCount: participantsList.length,
                        itemBuilder: (context, index) => Container(
                          margin: EdgeInsets.symmetric(vertical: 5),
                          padding: EdgeInsets.symmetric(
                              horizontal: Get.width * 0.04,
                              vertical: Get.height * 0.007),
                          decoration: BoxDecoration(
                            color: AppColors.textColor,
                            borderRadius: BorderRadius.circular(40),
                          ),
                          child: Row(
                            children: [
                              //leading
                              Container(
                                height: 30,
                                width: 30,
                                decoration: BoxDecoration(
                                  color: AppColors.bgColor,
                                  shape: BoxShape.circle,
                                  image: DecorationImage(
                                    image:
                                        AssetImage(participantsList[index][1]),
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: Get.width * 0.04,
                              ),
                              //title
                              Expanded(
                                child: Text(
                                  participantsList[index][0],
                                  style: TextStyle(fontSize: 14),
                                ),
                              ),
                              //Spacer(),
                              //trailing
                              index != 0
                                  ? Text(
                                      'Remove',
                                      style: TextStyle(
                                        color: Colors.grey[500],
                                        fontSize: 12,
                                      ),
                                    )
                                  : Text(''),
                            ],
                          ),

                          //MyListTile(participantsList: participantsList),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: Get.height * 0.04,
              ),
              //
              Padding(
                padding: EdgeInsets.symmetric(horizontal: Get.width * 0.1),
                child: MyButton(
                  text: navigationNumber == 2 ||
                          navigationNumber == 3 ||
                          navigationNumber == 4 ||
                          navigationNumber == 11 ||
                          navigationNumber == 12 ||
                          navigationNumber == 13 ||
                          navigationNumber == 14
                      ? 'Start Quiz'
                      : 'Next',
                  onTap: () {
                    if (navigationNumber == 2 ||
                        navigationNumber == 3 ||
                        navigationNumber == 4 ||
                        navigationNumber == 12 ||
                        navigationNumber == 14) {
                      Get.to(
                        () => QuizQuestionScreen(),
                      );
                    } else {
                      Get.to(
                        () => QuestionCreateScreen(),
                      );
                    }
                  },
                ),
              ),
              SizedBox(
                height: Get.height * 0.04,
              ),

              //
              PersonHomeIconsWidget(
                PersonIconBGColor: navigationNumber == 4 ||
                        navigationNumber == 13 ||
                        navigationNumber == 14
                    ? AppColors.bgDeepPurpleColor
                    : navigationNumber == 11 || navigationNumber == 12
                        ? AppColors.bgDarkGreenColor
                        : null,
                homeIconBGColor: navigationNumber == 4 ||
                        navigationNumber == 13 ||
                        navigationNumber == 14
                    ? AppColors.bgDeepPurpleColor
                    : navigationNumber == 11 || navigationNumber == 12
                        ? AppColors.bgDarkGreenColor
                        : null,
              ),
              Spacer(),
            ],
          ),
        ),
      ),
    );
  }
}
