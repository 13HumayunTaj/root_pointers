import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../Constants/AppColors.dart';
import 'PercentageBarWidget.dart';

class WinnerBarWidget extends StatelessWidget {
  WinnerBarWidget(
    this.winnersList,
    this.index, {
    super.key,
  });

  final List winnersList;
  final int index;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(
            horizontal: Get.width * 0.1,
          ),
          child: Row(
            children: [
              Container(
                padding: EdgeInsets.all(4),
                height: 25,
                width: 25,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.white,
                  image: DecorationImage(
                    image: AssetImage(
                      winnersList[index]['Winnerimg'],
                    ),
                  ),
                ),
              ),
              SizedBox(width: 8),
              Expanded(
                child: Text(
                  // MCQ number
                  winnersList[index]['WinnerName'],
                  style: TextStyle(
                    color: AppColors.lightWhiteColor,
                  ),
                ),
              ),
              //percentage text
              Text(
                winnersList[index]['WinnerPercentage'] + '%',
                style: TextStyle(color: AppColors.lightWhiteColor),
              ),
            ],
          ),
        ),
        SizedBox(height: 8),
        PercentageBarWidget(
          barColor: winnersList[index]['PercentageBarColor'],
          obtained: int.parse(
            winnersList[index]['WinnerPercentage'],
          ),
          total: 100,
        ),
        SizedBox(height: 20),
      ],
    );
  }
}
