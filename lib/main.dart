import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:root_pointers/Practices/Practice.dart';
import 'package:root_pointers/Practices/practice2.dart';
import 'package:root_pointers/screens/Spin/QuizStartScreen.dart';
import 'Practices/api_practice.dart';
import 'screens/WelcomeScreens/SplashScreen.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  // Set the status bar color
  // SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
  //   statusBarColor: AppColors
  //       .bgGreenColor, // Change this color to the desired status bar color
  // ));
  SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual, overlays: []);
  runApp(
    const MyApp(),
    // DevicePreview(
    //   builder: (context) => MyApp(), // Wrap your app with DevicePreview
    // ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      //builder: DevicePreview.appBuilder,
      //locale: DevicePreview.locale(context),
      debugShowCheckedModeBanner: false,
      title: 'Rumored App',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.deepPurple,
        ),
        useMaterial3: true,
      ),
      home: const SplashScreen(),
      //home: HomeScreen(),
      //home: ApiPractice(),
    );
  }
}
