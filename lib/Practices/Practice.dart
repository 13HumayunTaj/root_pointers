import 'dart:async';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:kbspinningwheel/kbspinningwheel.dart';
import 'package:root_pointers/Constants/AppColors.dart';
import 'package:root_pointers/Constants/ImagesClass.dart';

class pract extends StatefulWidget {
  @override
  State<pract> createState() => _practState();
}

class _practState extends State<pract> {
  final StreamController<int> _dividerController = StreamController<int>();

  @override
  void dispose() {
    _dividerController.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.bgColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 300,
              width: 300,
              child: Stack(
                children: [
                  SpinningWheel(
                    image: Image.asset('assets/images/wheel1.png'),
                    width: 310,
                    height: 310,
                    initialSpinAngle: _generateRandomAngle(),
                    spinResistance: 0.1,
                    canInteractWhileSpinning: false,
                    dividers: 12,
                    onUpdate: _dividerController.add,
                    onEnd: _dividerController.add,
                    // secondaryImage: Image.asset(
                    //   'assets/images/fixed_arrow.png',
                    // ),
                    secondaryImageHeight: 110,
                    secondaryImageWidth: 110,
                  ),
                ],
              ),
            ),
            SizedBox(height: 30),
            StreamBuilder<int>(
              stream: _dividerController.stream,
              builder: (context, snapshot) {
                if (snapshot.hasData) {
                  final selected = snapshot.data!;
                  return RouletteScore(selected);
                } else {
                  return Container();
                }
              },
            )
          ],
        ),
      ),
    );
  }

  double _generateRandomAngle() => Random().nextDouble() * pi * 2;
}

class RouletteScore extends StatelessWidget {
  final int selected;

  final Map<int, String> labels = {
    // 1: 'Challenge',
    // 2: 'Truth',
    // 3: 'Secret',
    // 4: 'Roast',
    // 5: 'Challenge',
    // 6: 'Truth',
    // 7: 'Secret',
    // 8: 'Free Pass',
    // 9: 'Challenge',
    // 10: 'Truth',
    // 11: 'Secret',
    // 12: 'Free Pass',
    1: '1',
    2: '2',
    3: '3',
    4: '4',
    5: '5',
    6: '6',
    7: '7',
    8: '8',
    9: '9',
    10: '10',
    11: '11',
    12: '12',
  };

  RouletteScore(this.selected);

  @override
  Widget build(BuildContext context) {
    return Text(
      '${labels[selected]}',
      style: TextStyle(
        fontStyle: FontStyle.italic,
        fontSize: 28.0,
        color: AppColors.textColor,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}
