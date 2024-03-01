import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:root_pointers/screens/AuthScreens/LoginScreen.dart';
import 'package:root_pointers/widgets/MyButton.dart';

import '../../Constants/AppColors.dart';
import '../../widgets/MyTextField.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  //
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController mobileController = TextEditingController();
  TextEditingController countryController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  bool isChecked = false;
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    nameController.dispose();
    emailController.dispose();
    mobileController.dispose();
    countryController.dispose();
    passwordController.dispose();
  }

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
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    // height: 60,
                    height: Get.height * 0.0747,
                  ),
                  //Text
                  FadeInDown(
                    child: Text(
                      'Create Your Account',
                      style: TextStyle(
                        letterSpacing: 0.8,
                        wordSpacing: 1,
                        fontWeight: FontWeight.bold,
                        fontSize: 30,
                        color: AppColors.textColor,
                      ),
                    ),
                  ),
                  SizedBox(
                    //height: 15,
                    height: Get.height * 0.0187,
                  ),
                  //name textfield
                  FadeInLeft(
                    child: MyTextField(
                      controller: nameController,
                      hintText: 'Name',
                      isSuffixIcon: false,
                      isObsecure: false,
                    ),
                  ),

                  SizedBox(
                    //height: 20,
                    height: Get.height * 0.024886,
                  ),

                  //email textfield
                  FadeInRight(
                    child: MyTextField(
                      controller: emailController,
                      hintText: 'Email',
                      isSuffixIcon: false,
                      isObsecure: false,
                    ),
                  ),

                  SizedBox(
                    //height: 20,
                    height: Get.height * 0.024886,
                  ),

                  //mobile no. textfield
                  FadeInLeft(
                    child: MyTextField(
                      controller: mobileController,
                      hintText: 'Mobile Number',
                      isSuffixIcon: false,
                      isObsecure: false,
                    ),
                  ),

                  SizedBox(
                    //height: 20,
                    height: Get.height * 0.024886,
                  ),

                  //country textfield
                  FadeInRight(
                    child: MyTextField(
                      controller: countryController,
                      hintText: 'Country',
                      isSuffixIcon: false,
                      isObsecure: false,
                    ),
                  ),

                  SizedBox(
                    //height: 20,
                    height: Get.height * 0.024886,
                  ),

                  //Password textfield
                  FadeInLeft(
                    child: MyTextField(
                      controller: passwordController,
                      hintText: 'Password',
                      isSuffixIcon: true,
                      isObsecure: true,
                    ),
                  ),

                  SizedBox(
                    //height: 15,
                    height: Get.height * 0.0187,
                  ),

                  // checkbox + text
                  FadeInUp(
                    child: Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: Get.width * 0.105),
                      child: Row(
                        children: [
                          Container(
                            color: AppColors.bgColor,
                            //width: 4,
                            height: 18,
                            width: 18,
                            child: Checkbox(
                                side: BorderSide(
                                  width: 1,
                                ),
                                checkColor: Colors.black,
                                activeColor: Colors.white,
                                value: isChecked,
                                onChanged: (val) {
                                  setState(() {
                                    isChecked = val!;
                                  });
                                }),
                          ),
                          SizedBox(width: 6),
                          Text(
                            'I agree with ',
                            style: TextStyle(
                              color: AppColors.textColor,
                            ),
                          ),
                          Text(
                            'Terms & Conditions',
                            style: TextStyle(
                              color: AppColors.YellowColor,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),

                  SizedBox(height: 25),

                  //sign-up button
                  FadeInUp(
                    delay: Duration(milliseconds: 1000),
                    child: Padding(
                      padding: EdgeInsets.symmetric(
                        //horizontal: 25,
                        horizontal: Get.width * 0.1018,
                      ),
                      child: MyButton(
                        text: 'Sign Up',
                        onTap: () {
                          if (formKey.currentState!.validate()) {}
                        },
                      ),
                    ),
                  ),
                  //
                  SizedBox(
                    //height: 25,
                    height: Get.height * 0.0311,
                  ),
                  FadeInUp(
                    delay: Duration(milliseconds: 1000),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Already have an Account? ',
                          style: TextStyle(
                            color: AppColors.lightWhiteColor,
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            Get.offAll(
                              () => LoginScreen(),
                              duration: Duration(seconds: 1),
                              transition: Transition.upToDown,
                            );
                          },
                          child: Text(
                            'Login',
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
