import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../Constants/AppColors.dart';
import '../Models/PaymentMethodsList.dart';

class PaymentOptionWidget extends StatelessWidget {
  const PaymentOptionWidget({
    super.key,
    required this.index,
  });

  final int index;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 8),
      width: double.infinity,
      padding: EdgeInsets.symmetric(
        horizontal: Get.width * 0.05,
        vertical: Get.height * 0.01,
      ),
      decoration: BoxDecoration(
        color: AppColors.borderGreyColor.withOpacity(0.15),
        border: Border.all(
          color: AppColors.borderGreyColor,
        ),
        borderRadius: BorderRadius.circular(50),
      ),
      child: Image.asset(
        PaymentMethodsList[index],
        height: 19,
        width: 50,
      ),
    );
  }
}
