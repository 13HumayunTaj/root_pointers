import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:root_pointers/Constants/AppColors.dart';
import 'package:root_pointers/Constants/ImagesClass.dart';
import 'package:root_pointers/Constants/TextStylesClass.dart';
import 'package:root_pointers/widgets/MyButton.dart';
import 'package:root_pointers/widgets/PersonHomeIconsWidget.dart';

import '../../Navigations/NavigationController.dart';
import '../HomeScreen.dart';

class ResultsWinScreen extends StatefulWidget {
  const ResultsWinScreen({super.key});

  @override
  State<ResultsWinScreen> createState() => _ResultsWinScreenState();
}

class _ResultsWinScreenState extends State<ResultsWinScreen> {
  //
  int navigationNumber =
      Get.find<NavigationController>().navigationNumber.value;

  //
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: navigationNumber == 11 || navigationNumber == 12
          ? AppColors.bgDarkGreenColor
          : navigationNumber == 4 ||
                  navigationNumber == 13 ||
                  navigationNumber == 14
              ? AppColors.bgDeepPurpleColor
              : AppColors.bgColor,
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              //SizedBox(height: 25),
              Spacer(),
              Text(
                'Try Again',
                style: TextStylesClass.style1,
              ),
              SizedBox(height: 10),
              Text(
                'Restart & Play Again',
                style: TextStylesClass.style2,
              ),
              Spacer(),
              Transform.rotate(
                //angle: 93,
                angle: 0,
                child: Transform.flip(
                  //flipX: true,
                  //angle: 81.61 * 3.14159 / 270,
                  child: Image.asset(
                    ImagesClass.restart_img2,
                    height: Get.height * 0.2,
                    //ImagesClass.restartImg,
                    //height: Get.height * 0.35,
                    //color: AppColors.secondaryColor,
                  ),
                ),
              ),

              //
              SizedBox(
                height: 50,
              ),
              Spacer(),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: Get.width * 0.1),
                child: MyButton(
                  text: 'Restart',
                  onTap: () {
                    Get.offAll(
                      () => HomeScreen(),
                    );
                  },
                ),
              ),
              SizedBox(height: 35),

              PersonHomeIconsWidget(
                PersonIconBGColor:
                    navigationNumber == 11 || navigationNumber == 12
                        ? AppColors.bgDarkGreenColor
                        : navigationNumber == 4 ||
                                navigationNumber == 13 ||
                                navigationNumber == 14
                            ? AppColors.bgDeepPurpleColor
                            : null,
                homeIconBGColor:
                    navigationNumber == 11 || navigationNumber == 12
                        ? AppColors.bgDarkGreenColor
                        : navigationNumber == 4 ||
                                navigationNumber == 13 ||
                                navigationNumber == 14
                            ? AppColors.bgDeepPurpleColor
                            : null,
              ),
              //SizedBox(height: 25),
              Spacer(),
            ],
          ),
        ),
      ),
    );
  }
}
