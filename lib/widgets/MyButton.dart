import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../Constants/AppColors.dart';

class MyButton extends StatelessWidget {
  final String text;
  final void Function()? onTap;
  final Color? ButtonColor;
  final Color? StringColor;

  MyButton({
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
          borderRadius: BorderRadius.circular(12),
        ),
        child: Text(
          text,
          style: TextStyle(
              color: StringColor == null ? AppColors.textColor : StringColor,
              fontWeight: FontWeight.bold,
              fontSize: 16),
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
