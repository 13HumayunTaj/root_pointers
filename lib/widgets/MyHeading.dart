import 'package:flutter/material.dart';

class MyHeading extends StatelessWidget {
  const MyHeading({
    required this.heading,
    super.key,
  });
  final String heading;

  @override
  Widget build(BuildContext context) {
    return Text(
      heading,
      style: TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}
