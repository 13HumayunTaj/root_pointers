import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../Constants/AppColors.dart';
import '../Models/ParticipantsList.dart';
import 'ParticipantSquare.dart';

class ParticipantsContainerWidget extends StatelessWidget {
  const ParticipantsContainerWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: Get.height * 0.2,
      margin: EdgeInsets.symmetric(horizontal: Get.width * 0.03),
      padding: EdgeInsets.symmetric(horizontal: 12),
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.greenAccent.withOpacity(0.1),
        borderRadius: BorderRadius.circular(30),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Participants',
            style: TextStyle(
              color: AppColors.textColor,
              fontSize: 15,
            ),
          ),
          SizedBox(
            height: Get.height * 0.02,
          ),
          Container(
            alignment: Alignment.center,
            height: 72,
            //color: Colors.orange,
            child: ListView.builder(
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              itemCount: ParticipantsList.length,
              itemBuilder: (context, index) => ParticipantSquare(index: index),
            ),
          )
        ],
      ),
    );
  }
}
