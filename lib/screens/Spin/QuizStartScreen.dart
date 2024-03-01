import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:root_pointers/Constants/AppColors.dart';
import 'package:root_pointers/Constants/ImagesClass.dart';
import 'package:root_pointers/screens/CreateQuizByYourself/ResultsWinScreen.dart';

import '../HomeScreen.dart';

class QuizStartScreen extends StatefulWidget {
  const QuizStartScreen({super.key});

  @override
  State<QuizStartScreen> createState() => _QuizStartScreenState();
}

class _QuizStartScreenState extends State<QuizStartScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(Duration(seconds: 3), () {
      Get.to(
        ResultsWinScreen(),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.bgDarkGreenColor,
      body: SafeArea(
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: Get.height * 0.07,
              ),
              Text(
                'Spin The Wheel!',
                style: TextStyle(
                  color: AppColors.textColor,
                  fontWeight: FontWeight.bold,
                  fontSize: 30,
                ),
              ),
              SizedBox(
                height: Get.height * 0.07,
              ),
              Image.asset(
                ImagesClass.spin_wheel_img2,
                height: Get.height * 0.5,
                width: Get.width,
              ),
              SizedBox(
                height: Get.height * 0.07,
              ),
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
            ],
          ),
        ),
      ),
    );
  }
}
