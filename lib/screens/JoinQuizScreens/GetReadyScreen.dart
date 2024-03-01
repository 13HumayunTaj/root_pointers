import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:root_pointers/Constants/AppColors.dart';
import 'package:root_pointers/screens/CreateQuizByYourself/QuizQuestionScreen.dart';

import '../../Constants/ImagesClass.dart';
import '../../Constants/TextStylesClass.dart';
import '../../widgets/PersonHomeIconsWidget.dart';

class GetReadyScreen extends StatefulWidget {
  const GetReadyScreen({super.key});

  @override
  State<GetReadyScreen> createState() => _GetReadyScreenState();
}

class _GetReadyScreenState extends State<GetReadyScreen> {
  //

  List participantsList = [
    ['You', 'assets/images/join-quiz/doremon.png'],
    ['April John', 'assets/images/join-quiz/nobita.png'],
    ['Veronica Park', 'assets/images/join-quiz/shizuka.png'],
    ['Jonathon Roye', 'assets/images/join-quiz/salman.png'],
  ];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(
      Duration(seconds: 3),
      () {
        Get.to(
          () => QuizQuestionScreen(),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.bgColor,
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  height: Get.height * 0.07,
                ),
                //const Spacer(),
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
                  height: Get.height * 0.02,
                ),
                Image.asset(
                  ImagesClass.sandwatchimg,
                  height: Get.height * 0.23,
                  width: Get.width * 0.23,
                ),
                //Spacer(),
                SizedBox(
                  height: Get.height * 0.02,
                ),
                Text(
                  '20 more participants besides you in this game',
                  style: TextStyle(color: AppColors.textColor),
                ),
                SizedBox(height: Get.height * 0.025),

                //participants list
                Container(
                  margin: EdgeInsets.symmetric(horizontal: Get.width * 0.1),
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: Color(0xff359699).withOpacity(0.6),
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
                                //horizontal: 15,
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
                                      image: AssetImage(
                                          participantsList[index][1]),
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
                //Spacer(),
                SizedBox(
                  height: Get.height * 0.05,
                ),

                //icons
                PersonHomeIconsWidget(),
                SizedBox(
                  height: Get.height * 0.05,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
