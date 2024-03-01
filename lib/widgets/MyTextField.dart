import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:root_pointers/Constants/AppColors.dart';

class MyTextField extends StatefulWidget {
  final String hintText;
  final bool isSuffixIcon;

  final TextEditingController controller;
  bool isObsecure;

  MyTextField({
    Key? key,
    required this.hintText,
    required this.isSuffixIcon,
    required this.isObsecure,
    required this.controller,
  }) : super(key: key);

  @override
  State<MyTextField> createState() => _MyTextFieldState();
}

class _MyTextFieldState extends State<MyTextField> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 15,
        vertical: 4,
      ),
      margin: EdgeInsets.symmetric(
        //horizontal: 40,
        horizontal: Get.width * 0.1018,
      ),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
      ),
      child: TextFormField(
        validator: (value) {
          if (value == null || value.isEmpty) {
            return 'Please enter the ${widget.hintText}';
          }
          return null;
        },
        obscureText: widget.isObsecure,
        controller: widget.controller,
        cursorColor: AppColors.bgColor,
        decoration: InputDecoration(
          suffixIcon: widget.isSuffixIcon == true
              ? GestureDetector(
                  onTap: () {
                    setState(() {
                      widget.isObsecure = !widget.isObsecure;
                    });
                  },
                  child: widget.isObsecure == true
                      ? Transform.flip(
                          flipX: true,
                          child: Icon(Icons.visibility_off_outlined))
                      : Icon(Icons.visibility_outlined),
                )
              : null,
          suffixIconColor: Colors.grey[500],
          hintText: widget.hintText,
          hintStyle: TextStyle(color: Colors.grey),
          border: InputBorder.none,
        ),
      ),
    );
  }
}
