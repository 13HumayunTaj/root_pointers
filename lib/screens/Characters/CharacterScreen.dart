import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:root_pointers/Constants/AppColors.dart';
import 'package:root_pointers/Models/CharactersList.dart';
import 'package:root_pointers/screens/JoinQuizScreens/GetReadyScreen.dart';
import 'package:root_pointers/widgets/MyButton2.dart';

import '../../Navigations/NavigationController.dart';

class CharacterScreen extends StatefulWidget {
  const CharacterScreen({super.key});

  @override
  State<CharacterScreen> createState() => _CharacterScreenState();
}

class _CharacterScreenState extends State<CharacterScreen> {
  //
  final PageController pageController = PageController(initialPage: 0);
  int currentIndex = 0;

  double selectedWidth = Get.width * 0.1332;

  int navigationNumber =
      Get.find<NavigationController>().navigationNumber.value;

  //
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.bgColor,
      body: SafeArea(
        child: PageView.builder(
          controller: pageController,
          onPageChanged: (value) {
            setState(() {
              currentIndex = value;
              print('value= $value  and currentIndex= $currentIndex');
            });
          },
          physics: BouncingScrollPhysics(),
          itemCount: CharactersList.length,
          itemBuilder: (context, index) => SingleChildScrollView(
            physics: BouncingScrollPhysics(),
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: Get.width * 0.1),
              child: Column(
                children: [
                  SizedBox(
                    height: Get.height * 0.05,
                  ),
                  Row(
                    children: [
                      GestureDetector(
                        onTap: () {
                          Get.back();
                        },
                        child: Icon(
                          Icons.arrow_back,
                          color: AppColors.textColor,
                        ),
                      ),
                      SizedBox(
                        width: Get.width * 0.05,
                      ),
                      Text(
                        'Your Character',
                        style: TextStyle(
                          color: AppColors.textColor,
                          fontSize: 18,
                        ),
                      ),
                    ],
                  ),
                  //
                  SizedBox(
                    height: Get.height * 0.03,
                  ),
                  Text(
                    '“${CharactersList[index]['CharacterName']}”',
                    style: TextStyle(
                      color: AppColors.textColor,
                      fontSize: 20,
                    ),
                  ),
                  SizedBox(
                    height: Get.height * 0.005,
                  ),
                  Text(
                    '${CharactersList[index]['CharacterVote']}' + '% votes',
                    style: TextStyle(
                      color: AppColors.textColor.withOpacity(0.65),
                      fontSize: 15,
                    ),
                  ),
                  SizedBox(
                    height: Get.height * 0.015,
                  ),
                  Image.asset(
                    CharactersList[index]['CharacterImg'],
                    height: Get.height * 0.25,
                    width: Get.width,
                  ),
                  Container(
                    alignment: Alignment.center,
                    height: Get.height * 0.31,
                    padding: EdgeInsets.symmetric(
                        horizontal: Get.width * 0.04,
                        vertical: Get.height * 0.05),
                    decoration: BoxDecoration(
                      color: AppColors.textColor,
                      borderRadius: BorderRadius.circular(25),
                    ),
                    child: SingleChildScrollView(
                      child: Text(
                        CharactersList[index]['CharacterDescription'],
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 15),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: Get.height * 0.025,
                  ),

                  //indicators
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      for (int j = 0; j < CharactersList.length; j++)
                        FadeInRight(
                          duration: index == j
                              ? Duration(milliseconds: 500)
                              : Duration(milliseconds: 300),
                          child: Container(
                            margin: EdgeInsets.symmetric(horizontal: 3),
                            height: 8,
                            width:
                                j == index ? selectedWidth : selectedWidth / 2,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50),
                              color: j == index
                                  ? AppColors.textColor
                                  : AppColors.textColor.withOpacity(0.36),
                            ),
                          ),
                        ),
                    ],
                  ),

                  SizedBox(
                    height: Get.height * 0.05,
                  ),

                  //
                  MyButton2(
                    text: 'Share',
                    onTap: () {
                      Get.find<NavigationController>().navigationNumber.value =
                          0;
                      Get.to(
                        () => GetReadyScreen(),
                      );
                    },
                  ),
                  SizedBox(
                    height: Get.height * 0.05,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
