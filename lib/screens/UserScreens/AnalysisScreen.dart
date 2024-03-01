import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:root_pointers/Models/ResultSummaryList.dart';
import 'package:root_pointers/screens/Characters/CharacterScreen.dart';
import 'package:root_pointers/widgets/PersonHomeIconsWidget.dart';
import '../../Constants/AppColors.dart';
import '../../widgets/MyAppBar.dart';
import '../../widgets/ParticipantsContainerWidget.dart';
import '../../widgets/SummaryTile.dart';

class AnalysisScreen extends StatefulWidget {
  const AnalysisScreen({super.key});

  @override
  State<AnalysisScreen> createState() => _AnalysisScreenState();
}

class _AnalysisScreenState extends State<AnalysisScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.bgColor,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: Get.width * 0.08),
            child: Column(
              children: [
                SizedBox(height: Get.height * 0.09),

                MyAppBar(title: 'Participants'),

                SizedBox(height: Get.height * 0.05),

                GestureDetector(
                    onTap: () {
                      Get.to(
                        () => CharacterScreen(),
                      );
                    },
                    child: ParticipantsContainerWidget()),

                SizedBox(height: Get.height * 0.04),

                Text(
                  'Result Summary',
                  style: TextStyle(
                    fontSize: 17,
                    color: AppColors.textColor,
                  ),
                ),

                SizedBox(height: Get.height * 0.03),

                //summary listView.builder
                SizedBox(
                  height: Get.height * 0.37,
                  child: ListView.builder(
                    itemCount: ResultSummaryList.length,
                    itemBuilder: (context, index) => SummaryTile(
                      title: ResultSummaryList[index]['title'],
                      image: ResultSummaryList[index]['image'],
                      name: ResultSummaryList[index]['name'],
                      percentage: ResultSummaryList[index]['percentage'],
                      color: ResultSummaryList[index]['color'],
                    ),
                  ),
                ),

                SizedBox(height: Get.height * 0.03),

                PersonHomeIconsWidget(),

                SizedBox(height: Get.height * 0.05),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
