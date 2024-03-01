import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PercentageBarWidget extends StatefulWidget {
  final Color barColor;
  final int obtained;
  final int total;

  const PercentageBarWidget({
    super.key,
    required this.barColor,
    required this.obtained,
    required this.total,
  });

  @override
  State<PercentageBarWidget> createState() => _PercentageBarWidgetState();
}

class _PercentageBarWidgetState extends State<PercentageBarWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: Get.width * 0.1),
      height: 10,
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Align(
        alignment: Alignment.centerLeft,
        child: Container(
          width: (widget.obtained / widget.total) * Get.width * 0.8,
          // Adjusted width based on percentage,
          height: 10,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),

              //changing color
              color: widget.barColor),
        ),
      ),
    );
  }
}
