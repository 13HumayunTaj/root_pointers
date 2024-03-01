import 'package:flutter/material.dart';

import '../Constants/AppColors.dart';

class newButton extends StatefulWidget {
  final String text;
  final void Function()? onTap;

  newButton({
    Key? key,
    required this.text,
    required this.onTap,
  }) : super(key: key);

  @override
  _newButtonState createState() => _newButtonState();
}

class _newButtonState extends State<newButton> {
  Color buttonColor = AppColors.secondaryColor;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        // Call the onTap callback if it's provided
        widget.onTap?.call();

        // Change the button color to red
        setState(() {
          buttonColor = Colors.red;
        });
      },
      child: Container(
        alignment: Alignment.center,
        width: MediaQuery.of(context).size.width,
        padding: EdgeInsets.symmetric(
            vertical: MediaQuery.of(context).size.height * 0.0174),
        decoration: BoxDecoration(
          color: buttonColor,
          borderRadius: BorderRadius.circular(12),
        ),
        child: Text(
          widget.text,
          style: TextStyle(
            color: AppColors.textColor,
            fontWeight: FontWeight.bold,
            fontSize: 16,
          ),
        ),
      ),
    );
  }
}

// class AppColors1 {
//   static const Color secondaryColor = Colors.blue; // Use your default color
//   static const Color textColor = Colors.black; // Use your default text color
// }
