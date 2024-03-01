import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:root_pointers/screens/AuthScreens/SignUpScreen.dart';
import '../../Constants/AppColors.dart';
import '../../Constants/ImagesClass.dart';
import '../../widgets/MyButton.dart';
import '../../widgets/MyTextField.dart';
import '../HomeScreen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController emailController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    emailController.dispose();
    passwordController.dispose();
  }

  //
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.bgColor,
      body: SafeArea(
        child: Form(
          key: formKey,
          child: SingleChildScrollView(
            physics: BouncingScrollPhysics(),
            child: Center(
              child: Column(
                children: [
                  SizedBox(
                    // height: 60,
                    height: Get.height * 0.0747,
                  ),
                  FadeInDown(
                    duration: Duration(milliseconds: 1000),
                    child: Image.asset(
                      ImagesClass.logoImg,
                      // height: 123,
                      // width: 174,
                      height: Get.height * 0.1530,
                      width: Get.width * 0.4430,
                    ),
                  ),
                  SizedBox(height: Get.height * 0.05599),

                  //Text
                  FadeInDown(
                    duration: Duration(milliseconds: 1500),
                    child: Text(
                      'Login to Your Account',
                      style: TextStyle(
                        letterSpacing: 0.8,
                        wordSpacing: 1,
                        fontWeight: FontWeight.bold,
                        fontSize: 30,
                        color: AppColors.textColor,
                      ),
                    ),
                  ),

                  SizedBox(height: Get.height * 0.0311),

                  //email textfield
                  FadeInRight(
                    delay: Duration(milliseconds: 500),
                    child: MyTextField(
                      controller: emailController,
                      hintText: 'Email',
                      isSuffixIcon: false,
                      isObsecure: false,
                    ),
                  ),

                  SizedBox(height: Get.height * 0.0249),

                  //Password textfield
                  FadeInLeft(
                    delay: Duration(milliseconds: 1250),
                    child: MyTextField(
                      controller: passwordController,
                      hintText: 'Password',
                      isSuffixIcon: true,
                      isObsecure: true,
                    ),
                  ),
                  SizedBox(
                    //height: 20,
                    height: Get.height * 0.0249,
                  ),

                  //login button
                  FadeInUp(
                    delay: Duration(milliseconds: 1000),
                    child: Padding(
                      padding: EdgeInsets.symmetric(
                        //horizontal: 40
                        horizontal: Get.width * 0.1019,
                      ),
                      child: MyButton(
                        text: 'Login',
                        onTap: () {
                          if (formKey.currentState!.validate()) {
                            Get.offAll(
                              () => HomeScreen(),
                              duration: Duration(seconds: 1),
                              transition: Transition.rightToLeftWithFade,
                            );
                          }
                        },
                      ),
                    ),
                  ),

                  SizedBox(
                    //height: 35,
                    height: Get.height * 0.0436,
                  ),

                  //forget text

                  FadeInUp(
                    delay: Duration(milliseconds: 1000),
                    child: Text(
                      'Forget User / Password ?',
                      style: TextStyle(
                        color: AppColors.lightWhiteColor,
                      ),
                    ),
                  ),
                  SizedBox(
                    //height: 15,
                    height: Get.height * 0.0187,
                  ),
                  FadeInUp(
                    delay: Duration(milliseconds: 1000),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Don\'t have an Account? ',
                          style: TextStyle(
                            color: AppColors.lightWhiteColor,
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            Get.to(
                              () => SignUpScreen(),
                              duration: Duration(seconds: 1),
                              transition: Transition.downToUp,
                            );
                          },
                          child: Text(
                            'Sign Up',
                            style: TextStyle(
                              color: AppColors.YellowColor,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  //ending sizedbox
                  SizedBox(
                    //height: 35,
                    height: Get.height * 0.0436,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
