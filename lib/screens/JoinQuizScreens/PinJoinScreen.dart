import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:otp_pin_field/otp_pin_field.dart';
import 'package:root_pointers/Constants/AppColors.dart';
import 'package:root_pointers/Constants/ImagesClass.dart';
import 'package:root_pointers/Navigations/NavigationController.dart';
import 'package:root_pointers/screens/CreateQuizByYourself/CreateQuizParicipantsScreen.dart';
import 'package:root_pointers/screens/JoinQuizScreens/GetReadyScreen.dart';
import 'package:root_pointers/widgets/MyButton.dart';

import '../../widgets/PersonHomeIconsWidget.dart';

class PinJoinScreen extends StatefulWidget {
  const PinJoinScreen({super.key});

  @override
  State<PinJoinScreen> createState() => _PinJoinScreenState();
}

class _PinJoinScreenState extends State<PinJoinScreen> {
  int navigationNumber =
      Get.find<NavigationController>().navigationNumber.value;

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
        child: SingleChildScrollView(
          reverse: true,
          physics: BouncingScrollPhysics(),
          child: Center(
            child: Column(
              children: [
                SizedBox(height: Get.height * 0.07),
                Image.asset(
                  ImagesClass.pin_join_img,
                  height: Get.height * 0.25,
                ),
                SizedBox(height: Get.height * 0.01),
                Text(
                  navigationNumber == 1 ||
                          navigationNumber == 2 ||
                          navigationNumber == 3 ||
                          navigationNumber == 4 ||
                          navigationNumber == 11 ||
                          navigationNumber == 12 ||
                          navigationNumber == 13 ||
                          navigationNumber == 14
                      ? 'Share PIN with your friends'
                      : 'Enter PIN to join the quiz',
                  style: TextStyle(
                    color: AppColors.textColor,
                    fontSize: 18,
                  ),
                ),
                SizedBox(height: Get.height * 0.025),
                OtpPinField(
                  autoFocus: false,
                  onSubmit: (text) {
                    print('onSubmit text = $text');
                  },
                  onChange: (text) {
                    print('onChanged text = $text');
                  },
                  //
                  otpPinFieldStyle: OtpPinFieldStyle(
                    /// border color for inactive/unfocused Otp_Pin_Field
                    defaultFieldBorderColor: Colors.transparent,
                    //Color(0xff3FA2AB).withOpacity(0.35),

                    /// border color for active/focused Otp_Pin_Field
                    activeFieldBorderColor: AppColors.blueColor,

                    /// Background Color for inactive/unfocused Otp_Pin_Field
                    defaultFieldBackgroundColor:
                        // Colors.brown.shade900.withOpacity(0.2),
                        AppColors.lightbgColor,
                    //  Color(0xff3FA2AB).withOpacity(0.35),

                    /// Background Color for active/focused Otp_Pin_Field
                    activeFieldBackgroundColor: AppColors.textColor,

                    /// Background Color for filled field pin box
                    filledFieldBackgroundColor: AppColors.textColor,

                    /// border Color for filled field pin box
                    filledFieldBorderColor: Colors.white,
                    fieldBorderRadius: 6,
                    textStyle: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 24,
                    ),
                  ),
                  otpPinFieldDecoration: OtpPinFieldDecoration.custom,
                  fieldHeight: Get.height * 0.079,
                  fieldWidth: Get.height * 0.079,
                ),

                SizedBox(height: Get.height * 0.02),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: Get.width * 0.10),
                  child: MyButton(
                    text: 'Next',
                    onTap: () {
                      if (navigationNumber == 1 ||
                          navigationNumber == 2 ||
                          navigationNumber == 3 ||
                          navigationNumber == 4 ||
                          navigationNumber == 11 ||
                          navigationNumber == 12 ||
                          navigationNumber == 13 ||
                          navigationNumber == 14) {
                        Get.to(
                          () => CreateQuizParicipantsScreen(),
                        );
                      }
                      if (navigationNumber == 0) {
                        Get.to(
                          () => GetReadyScreen(),
                        );
                      }
                    },
                  ),
                ),
                SizedBox(height: Get.height * 0.28),

                //
                FadeInUp(
                  delay: Duration(milliseconds: 50),
                  child: PersonHomeIconsWidget(
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
                ),
                SizedBox(height: Get.height * 0.05)
              ],
            ),
          ),
        ),
      ),
    );
  }
}
