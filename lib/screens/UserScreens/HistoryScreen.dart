import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:root_pointers/Models/HistoryList.dart';
import 'package:root_pointers/widgets/MyAppBar.dart';
import 'package:root_pointers/widgets/PersonHomeIconsWidget.dart';
import '../../Constants/AppColors.dart';
import '../../widgets/HistoryTile.dart';

class HistoryScreen extends StatefulWidget {
  const HistoryScreen({super.key});

  @override
  State<HistoryScreen> createState() => _HistoryScreenState();
}

class _HistoryScreenState extends State<HistoryScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.bgColor,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: Get.width * 0.08),
          child: Column(
            children: [
              SizedBox(height: Get.height * 0.09),
              MyAppBar(title: 'History'),
              SizedBox(height: Get.height * 0.04),
              Container(
                height: Get.height * 0.65,
                child: ListView.builder(
                  shrinkWrap: true,
                  itemCount: HistoryList.length,
                  itemBuilder: (context, index) => HistoryTile(
                    index: index,
                  ),
                ),
              ),
              Spacer(),
              PersonHomeIconsWidget(),
              Spacer(),
            ],
          ),
        ),
      ),
    );
  }
}
