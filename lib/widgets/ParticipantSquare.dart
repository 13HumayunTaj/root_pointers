import 'package:flutter/material.dart';
import '../Constants/AppColors.dart';
import '../Models/ParticipantsList.dart';

class ParticipantSquare extends StatelessWidget {
  const ParticipantSquare({
    super.key,
    required this.index,
  });
  final int index;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 72,
      width: 66,
      margin: EdgeInsets.symmetric(horizontal: 3),
      padding: EdgeInsets.symmetric(vertical: 8, horizontal: 0),
      decoration: BoxDecoration(
        color: AppColors.textColor,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          //image container
          Container(
            height: 30,
            width: 30,
            decoration: BoxDecoration(
              color: AppColors.textColor,
              shape: BoxShape.circle,
              image: DecorationImage(
                //fit: BoxFit.fitHeight,
                image: AssetImage(
                  ParticipantsList[index]['image'],
                ),
              ),
            ),
          ),

          SizedBox(height: 4),
          Text(
            ParticipantsList[index]['name'],
            overflow: TextOverflow.ellipsis,
            textAlign: TextAlign.center,
            maxLines: 1,
            style: TextStyle(fontSize: 8),
          ),
        ],
      ),
    );
  }
}
