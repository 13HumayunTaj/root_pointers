import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:root_pointers/Constants/ImagesClass.dart';
import '../Constants/AppColors.dart';

class MyButton2 extends StatelessWidget {
  final String text;
  final void Function()? onTap;
  final Color? ButtonColor;
  final Color? StringColor;

  MyButton2({
    super.key,
    required this.text,
    required this.onTap,
    this.ButtonColor,
    this.StringColor,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        alignment: Alignment.center,
        width: Get.width,
        padding: EdgeInsets.symmetric(vertical: Get.height * 0.0174),
        decoration: BoxDecoration(
          color: ButtonColor == null ? AppColors.secondaryColor : ButtonColor,
          borderRadius: BorderRadius.circular(50),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              text,
              style: TextStyle(
                color: StringColor == null ? AppColors.textColor : StringColor,
                fontWeight: FontWeight.bold,
                fontSize: 18,
              ),
            ),
            SizedBox(
              width: Get.width * 0.02,
            ),
            Image.asset(
              ImagesClass.share_icon,
              height: 15,
            ),
          ],
        ),
      ),
    );
  }
}

class TickCircle extends StatelessWidget {
  const TickCircle({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(1),
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: Colors.white,
      ),
      child: Icon(
        Icons.check,
        color: AppColors.bgColor,
        size: 14,
      ),
    );
  }
}
