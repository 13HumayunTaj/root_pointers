import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:root_pointers/Constants/ImagesClass.dart';
import '../../Constants/AppColors.dart';
import '../../widgets/MyButton.dart';
import '../AuthScreens/LoginScreen.dart';

class onBoardScreen extends StatefulWidget {
  const onBoardScreen({super.key});

  @override
  State<onBoardScreen> createState() => _onBoardScreenState();
}

class _onBoardScreenState extends State<onBoardScreen> {
  //

  List onBoardingTextsList = [
    'Access to all game modes',
    'Create your own quiz',
    'Invite friends',
  ];

  //
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.bgColor,
      appBar: AppBar(
        backgroundColor: AppColors.bgColor,
      ),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Padding(
          padding: EdgeInsets.symmetric(
              vertical: 25, horizontal: Get.width * 0.0637),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Image.asset(
                ImagesClass.logoImg,
                // height: 123,
                // width: 174,
                height: Get.height * 0.1530,
                width: Get.width * 0.4430,
              ),
              SizedBox(height: Get.height * 0.0498),
              Padding(
                padding: EdgeInsets.symmetric(
                    //horizontal: 15,
                    horizontal: Get.width * 0.03819),
                child: Column(
                  children: [
                    //text onBoardingTextsList
                    for (int index = 0;
                        index < onBoardingTextsList.length;
                        index++) ...[
                      Column(
                        children: [
                          onBoardingTextWidget(
                              onBoardingTextsList: onBoardingTextsList,
                              index: index),
                          SizedBox(
                            height: Get.height * 0.0124,
                          ),
                        ],
                      ),
                    ],

                    // SizedBox(
                    //   height: Get.height * 0.0124,
                    // ),
                  ],
                ),
              ),

              //Spacer(),
              SizedBox(
                height: Get.height * 0.4,
              ),

              //button continue
              FadeInLeft(
                delay: Duration(milliseconds: 1300),
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: Get.width * 0.0382),
                  child: MyButton(
                    text: 'Continue',
                    onTap: () {
                      Get.off(
                        () => LoginScreen(),
                        duration: Duration(milliseconds: 1300),
                        transition: Transition.fade,
                      );
                    },
                  ),
                ),
              ),
              // SizedBox(
              //   // height: 35,
              //   height: Get.height * 0.0436,
              // ),
            ],
          ),
        ),
      ),
    );
  }
}

class onBoardingTextWidget extends StatelessWidget {
  const onBoardingTextWidget({
    super.key,
    required this.onBoardingTextsList,
    required this.index,
  });

  final List onBoardingTextsList;
  final int index;

  @override
  Widget build(BuildContext context) {
    return FadeInUp(
      duration: Duration(milliseconds: 1000),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          TickCircle(),
          SizedBox(width: 8),
          Expanded(
            child: Text(
              onBoardingTextsList[index],
              //overflow: TextOverflow.ellipsis,

              style: TextStyle(
                color: AppColors.textColor,
                fontSize: 18,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
