import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../Constants/ImagesClass.dart';

class MyTile extends StatelessWidget {
  const MyTile({
    super.key,
    required this.title,
    required this.icon,
  });

  final String title;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: Get.height * 0.01),
        Row(
          children: [
            Icon(
              icon,
              size: 20,
            ),
            SizedBox(width: Get.width * 0.07),
            Expanded(
              child: Text(
                title,
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
            Image.asset(
              ImagesClass.forward_icon,
              height: 30,
            ),
          ],
        ),
        SizedBox(height: Get.height * 0.005),
        Divider(),
      ],
    );
  }
}
