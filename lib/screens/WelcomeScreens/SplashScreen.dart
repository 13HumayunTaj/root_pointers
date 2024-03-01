import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:root_pointers/Constants/ImagesClass.dart';

import '../../Constants/AppColors.dart';
import 'onBoardScreen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(Duration(seconds: 2), () {
      Get.offAll(
        () => onBoardScreen(),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.bgColor,
      body: Center(
        child: Image.asset(
          ImagesClass.logoImg,
          // height: 123,
          // width: 174,
          height: Get.height * 0.1530,
          width: Get.width * 0.4430,
        ),
      ),
    );
  }
}
