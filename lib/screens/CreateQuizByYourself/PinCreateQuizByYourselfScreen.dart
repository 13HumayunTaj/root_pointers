import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:root_pointers/Constants/AppColors.dart';
import 'package:root_pointers/Constants/ImagesClass.dart';
import 'package:root_pointers/screens/JoinQuizScreens/GetReadyScreen.dart';
import 'package:root_pointers/widgets/MyButton.dart';

import '../../widgets/PersonHomeIconsWidget.dart';

class PinCreateQuizByYourselfScreen extends StatefulWidget {
  const PinCreateQuizByYourselfScreen({super.key});

  @override
  State<PinCreateQuizByYourselfScreen> createState() =>
      _PinCreateQuizByYourselfScreenState();
}

class _PinCreateQuizByYourselfScreenState
    extends State<PinCreateQuizByYourselfScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.bgColor,
      body: Center(
        child: Column(
          children: [
            SizedBox(height: 25),
            Image.asset(
              ImagesClass.pin_join_img,
              height: Get.height * 0.2,
            ),
            Text(
              'Share PIN with your friends',
              style: TextStyle(
                color: AppColors.textColor,
                fontSize: 16,
              ),
            ),
            SizedBox(height: 15),
            Container(
              //padding: EdgeInsets.all(15),
              height: 40,
              width: 40,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(4),
              ),
              child: TextField(
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.only(bottom: 10, left: 15),
                  border: InputBorder.none,
                  counterText: '',
                ),
                maxLength: 1,

                //cursorColor: AppColors.textColor,
              ),
            ),
            SizedBox(height: 15),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: Get.width * 0.10),
              child: MyButton(
                text: 'Next',
                onTap: () {
                  Get.off(
                    () => GetReadyScreen(),
                  );
                },
              ),
            ),
            Spacer(),

            //
            FadeInUp(
              delay: Duration(milliseconds: 50),
              child: PersonHomeIconsWidget(),
            ),
            SizedBox(
              height: Get.height * 0.07,
            ),
          ],
        ),
      ),
    );
  }
}
