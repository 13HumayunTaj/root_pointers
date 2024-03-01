import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:root_pointers/Constants/AppColors.dart';
import 'package:root_pointers/Constants/ImagesClass.dart';
import 'package:root_pointers/Navigations/NavigationController.dart';
import 'package:root_pointers/screens/Popups/Popup1.dart';
import 'package:root_pointers/screens/Popups/SpinPopups/PopupSpin.dart';
import 'package:root_pointers/widgets/PersonHomeIconsWidget.dart';

import '../Models/EditionsList.dart';
import 'Popups/Premium/PremiumEditionsPopup.dart';

class EditionsScreen extends StatefulWidget {
  const EditionsScreen({super.key});

  @override
  State<EditionsScreen> createState() => _EditionsScreenState();
}

class _EditionsScreenState extends State<EditionsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.bgColor,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: Get.height * 0.06,
              ),
              Text(
                'Pick any Edition',
                style: TextStyle(
                  fontSize: 30,
                  color: AppColors.textColor,
                  fontWeight: FontWeight.w400,
                ),
              ),
              SizedBox(
                height: Get.height * 0.03,
              ),
              Container(
                //margin: EdgeInsets.symmetric(horizontal: Get.width * 0.12),
                padding: EdgeInsets.symmetric(horizontal: Get.width * 0.12),
                height: Get.height * 0.67,
                child: GridView.builder(
                  shrinkWrap: true,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: Get.width * 0.05,
                    mainAxisSpacing: Get.height * 0.005,
                  ),
                  itemCount: EditionsList.length,
                  itemBuilder: (context, index) => GestureDetector(
                    onTap: () {
                      if (EditionsList[index]['isDiamond'] == false &&
                          EditionsList[index]['edition'] != 'Spin the Wheel') {
                        Popup1Function();
                      }
                      if (EditionsList[index]['isDiamond'] == false &&
                          EditionsList[index]['edition'] == 'Spin the Wheel') {
                        Get.find<NavigationController>()
                            .navigationNumber
                            .value = 10;
                        PopupSpin();
                      }

                      //premium OR diamond
                      if (EditionsList[index]['isDiamond'] == true) {
                        PremiumEditionsPopup();
                      }
                    },
                    child: Stack(
                      children: [
                        Container(
                          height: Get.height * 0.15,
                          width: double.infinity,
                          margin: EdgeInsets.only(top: 8),
                          decoration: BoxDecoration(
                            color: AppColors.textColor,
                            borderRadius: BorderRadius.circular(20),
                            boxShadow: [
                              BoxShadow(
                                color: Color.fromRGBO(0, 0, 0, 0.08),
                                offset: Offset(0, 0),
                                blurRadius: 19,
                                spreadRadius: 0,
                              ),
                            ],
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset(
                                EditionsList[index]['image'],
                                height: 40,
                              ),
                              SizedBox(
                                height: Get.height * 0.01,
                              ),
                              Text(
                                EditionsList[index]['edition'],
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ],
                          ),
                        ),
                        if (EditionsList[index]['isDiamond'])
                          Container(
                            height: Get.height * 0.15,
                            width: double.infinity,
                            margin: EdgeInsets.only(top: 8),
                            decoration: BoxDecoration(
                              color: Colors.black.withOpacity(0.2),
                              borderRadius: BorderRadius.circular(20),
                              boxShadow: [
                                BoxShadow(
                                  color: Color.fromRGBO(0, 0, 0, 0.08),
                                  offset: Offset(0, 0),
                                  blurRadius: 19,
                                  spreadRadius: 0,
                                ),
                              ],
                            ),
                          ),
                        if (EditionsList[index]['isDiamond'])
                          Positioned(
                            right: 0 + 10,
                            top: 0,
                            child: Image.asset(
                              ImagesClass.diamond_img,
                              height: 26,
                              width: 33,
                            ),
                          ),
                      ],
                    ),
                  ),
                ),
              ),
              //
              SizedBox(
                height: Get.height * 0.05,
              ),
              PersonHomeIconsWidget(),
              SizedBox(
                height: Get.height * 0.05,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
