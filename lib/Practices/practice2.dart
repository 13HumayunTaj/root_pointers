import 'package:flutter/material.dart';
import 'package:root_pointers/Constants/AppColors.dart';
import 'package:widget_spinning_wheel/widget_spinning_wheel.dart';

class Practice2 extends StatefulWidget {
  const Practice2({super.key});

  @override
  State<Practice2> createState() => _Practice2State();
}

class _Practice2State extends State<Practice2> {
  String selected = '1';
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.bgColor,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              WidgetSpinningWheel(
                labels: [
                  'Challenge',
                  '2',
                  '3',
                  '4',
                  '5',
                  '6',
                  '7',
                  '8',
                  '9',
                  '10',
                  '11',
                  '12'
                ],
                onSpinComplete: (label) {
                  setState(() {
                    selected = label;
                  });
                },
                size: 300,
                colours: [
                  Color(0xffA047D3),
                  Color(0xff2FB8CB),
                  Color(0xff007BFF),
                  Color(0xff34C564),
                  Color(0xffFFC800),
                  Color(0xffE33070),
                ],
              ),
              Text(
                selected,
                style: TextStyle(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
