import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:root_pointers/Constants/ImagesClass.dart';
import 'package:root_pointers/screens/UserScreens/AnalysisScreen.dart';
import 'package:root_pointers/screens/UserScreens/HistoryScreen.dart';
import 'package:root_pointers/widgets/PersonHomeIconsWidget.dart';

import '../../Constants/AppColors.dart';
import '../../Models/UserDataMap.dart';
import '../../widgets/MyHeading.dart';
import '../../widgets/MyTile.dart';

ProfileBottomSheet() {
  double imgHeight = Get.height * 0.1;
  double radius = Get.height * 0.05;

  double topPadding = Get.height * 0.2;

  List catList = [
    ['History', ImagesClass.history_icon],
    ['Analysis', ImagesClass.analysis_icon],
  ];
  Get.bottomSheet(
    Stack(
      children: [
        //background container
        Container(
          color: AppColors.bgColor,
          height: Get.height,
          child: Column(
            children: [
              SizedBox(
                height: Get.height * 0.09,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: Get.width * 0.1),
                child: Row(
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
                      'User Profile',
                      style: TextStyle(
                        color: AppColors.textColor,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        //end of background container

        //start of above container
        Container(
          margin: EdgeInsets.only(top: topPadding),
          width: double.infinity,
          //height: Get.height * 0.75,

          decoration: BoxDecoration(
            color: AppColors.textColor,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(30),
              topRight: Radius.circular(30),
            ),
          ),
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  height: radius + Get.height * 0.005,
                ),
                Text(
                  UserDataMap['userName'],
                  style: TextStyle(
                    fontSize: 19,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: Get.height * 0.005,
                ),
                Text(
                  UserDataMap['userEmail'],
                  style: TextStyle(
                    fontSize: 11,
                    fontWeight: FontWeight.w500,
                    color: Color(0xff2D2B2B),
                  ),
                ),
                SizedBox(
                  height: Get.height * 0.02,
                ),
                //history + analysis
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    for (int j = 0; j < catList.length; j++)
                      GestureDetector(
                        onTap: () {
                          //j=0 means History
                          if (j == 0)
                            Get.to(
                              () => HistoryScreen(),
                              transition: Transition.downToUp,
                            );
                          //j=1 means Analysis
                          if (j == 1)
                            Get.to(
                              () => AnalysisScreen(),
                              transition: Transition.downToUp,
                            );
                        },
                        child: Column(
                          children: [
                            Image.asset(
                              //history
                              catList[j][1],
                              height: imgHeight / 2.5,
                            ),
                            SizedBox(
                              height: Get.height * 0.005,
                            ),
                            Text(
                              catList[j][0],
                              style: TextStyle(
                                fontSize: 11,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            SizedBox(
                              width: Get.width * 0.17,
                            ),
                          ],
                        ),
                      ),
                  ],
                ),

                SizedBox(height: Get.height * 0.02),

                //
                Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: Get.width * 0.1),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        MyHeading(heading: 'Account'),
                        MyTile(
                          title: 'Edit profile',
                          icon: Icons.edit,
                        ),
                        SizedBox(height: Get.height * 0.02),
                        MyHeading(heading: 'About'),
                        MyTile(
                          title: 'Help & Support',
                          icon: Icons.help,
                        ),
                        MyTile(
                          title: 'About Us',
                          icon: Icons.info,
                        ),
                        MyTile(
                          title: 'Privacy Policy',
                          icon: Icons.privacy_tip,
                        ),
                        SizedBox(height: Get.height * 0.02),
                        MyHeading(heading: 'General'),
                        MyTile(
                          title: 'Subscription',
                          icon: Icons.check_circle,
                        ),
                        SizedBox(height: Get.height * 0.02),
                        PersonHomeIconsWidget(
                          homeIconBGColor: AppColors.textColor,
                          homeIconColor: AppColors.bgColor,
                          homeIconBorderColor: AppColors.bgColor,
                          PersonIconTap: () {},
                        ),
                        SizedBox(height: Get.height * 0.05),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        //end of above container

        //start of img
        Positioned(
          top: topPadding - radius,
          left: Get.width * 0.5 - radius,
          child: Container(
            height: imgHeight,
            width: imgHeight,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: AppColors.YellowColor,
              image: DecorationImage(
                //fit: BoxFit.contain,
                image: AssetImage(
                  UserDataMap['userImg'],
                ),
              ),
            ),
          ),
        ),
      ],
    ),
    isScrollControlled: true,
    //ignoreSafeArea: false,
  );
}
