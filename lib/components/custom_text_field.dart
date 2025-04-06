import 'package:flutter/material.dart';
import 'package:ui_mastery/constants/constants.dart';

class CustomTextField extends StatelessWidget {
  final String hintText;
  final TextEditingController? controller;
  final TextInputType keyboardType;
  final bool obsecureText;
  final Padding? suffixIcon;

  const CustomTextField({
    super.key,
    required this.hintText,
    this.controller,
    this.keyboardType = TextInputType.text,
    this.obsecureText = false,
    this.suffixIcon,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: 280,
        height: 50,
        child: TextField(
          controller: controller,
          keyboardType: keyboardType,
          obscureText: obsecureText,
          style: TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.w600,
          ),
          decoration: InputDecoration(
              hintText: hintText,
              hintStyle: TextStyle(color: ColorManager.fieldColor),
              contentPadding: EdgeInsets.symmetric(horizontal: 25),
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(50),
                  borderSide: BorderSide(color: ColorManager.whiteGrey)),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(30),
                borderSide: BorderSide(color: Colors.white),
              ),
              filled: true,
              focusColor: Colors.red,
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(30),
                borderSide:
                    BorderSide(color: ColorManager.primaryColor, width: 2),
              ),
              suffixIcon: suffixIcon,
              fillColor: ColorManager.whiteGrey),
        ));
  }
}
