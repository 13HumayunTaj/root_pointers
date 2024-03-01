import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:root_pointers/Constants/ImagesClass.dart';
import 'package:root_pointers/screens/EditionsScreen.dart';
import 'package:root_pointers/screens/JoinQuizScreens/PinJoinScreen.dart';
import 'package:root_pointers/widgets/PersonHomeIconsWidget.dart';
import '../Constants/AppColors.dart';
import '../Navigations/NavigationController.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  //
  final NavigationController navigationController =
      Get.put(NavigationController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.bgColor,
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              //

              FadeInUp(
                delay: Duration(milliseconds: 500),
                child: Image.asset(
                  ImagesClass.homeImg,
                  height: Get.height * 0.5028,
                  width: Get.width * 0.8396,
                ),
              ),
              SizedBox(
                //height: 50,
                height: Get.height * 0.0622,
              ),

              FadeInRight(
                delay: Duration(milliseconds: 1000),
                child: GestureDetector(
                  onTap: () {
                    navigationController.navigationNumber.value = 1;
                    Get.to(
                      () => EditionsScreen(),
                    );
                  },
                  child: Image.asset(
                    ImagesClass.createQuizImg,
                    height: Get.height * 0.1119,
                    width: Get.width * 0.6061,
                  ),
                ),
              ),
              FadeInLeft(
                delay: Duration(milliseconds: 1000),
                child: GestureDetector(
                  onTap: () {
                    navigationController.navigationNumber.value = 0;

                    Get.to(
                      () => PinJoinScreen(),
                    );
                  },
                  child: Image.asset(
                    ImagesClass.joinQuizImg,
                    height: Get.height * 0.1268,
                    width: Get.width * 0.6061,
                  ),
                ),
              ),

              //Spacer(),

              SizedBox(
                height: Get.height * 0.0871,
              ),

              FadeInUp(
                delay: Duration(milliseconds: 1500),
                child: PersonHomeIconsWidget(
                  homeIconBGColor: AppColors.textColor,
                  homeIconColor: AppColors.secondaryColor,
                  homeIconTap: () {},
                ),
              ),

              SizedBox(
                height: Get.height * 0.056,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
