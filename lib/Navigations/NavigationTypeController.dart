import 'package:get/get.dart';

enum NavigationType {
  JoinQuiz,
  CreateQuiz,
  MinorYes,
  DrinkingGameNo,
  DrinkingGameYes,
  SpinTheWheel,
  MinorByYourself,
  MinorAutoGenerate,
  DrinkingWheelByYourself,
  DrinkingWheelAutoGenerate,
}

class NavigationController extends GetxController {
  Rx<NavigationType> navigationType = NavigationType.JoinQuiz.obs;
}

// Set the navigation type to "Create Quiz"
// navigationController.navigationType.value = NavigationType.createQuiz;

// Get the current navigation type
// NavigationType currentType = navigationController.navigationType.value;



// final NavigationController navigationController = Get.put(NavigationController());

// Get the current navigation type
// NavigationType currentType = navigationController.navigationType.value;


