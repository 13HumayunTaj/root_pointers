import 'package:flutter/material.dart';
import '../Constants/AppColors.dart';

class PointWidget extends StatefulWidget {
  const PointWidget({
    Key? key,
    required this.isFill,
  }) : super(key: key);

  final bool isFill;

  @override
  State<PointWidget> createState() => _PointWidgetState();
}

class _PointWidgetState extends State<PointWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 11,
      width: 11,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: widget.isFill ? AppColors.pointOrangeColor : AppColors.textColor,
        border: Border.all(
          color: AppColors.pointOrangeColor,
        ),
      ),
    );
  }
}
