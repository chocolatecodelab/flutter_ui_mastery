import 'package:flutter/material.dart';
import 'package:ui_mastery/constants/constants.dart';

class CustomButton extends StatelessWidget {
  // properties
  final VoidCallback onPressed;
  final TextStyle textStyle;
  final double borderRadius;
  final Widget widget;
  final Widget? trailingWidget;
  final double? height;
  final double? width;

  const CustomButton(
      {super.key,
      required this.onPressed,
      this.textStyle = const TextStyle(
          color: Colors.white,
          fontSize: 15,
          fontWeight: FontWeight.w700,
          backgroundColor: ColorManager.primaryColor),
      this.borderRadius = 50,
      this.height,
      this.trailingWidget,
      this.width,
      required this.widget});

  @override
  Widget build(BuildContext context) {
    final Widget content = widget is Text
        ? Text((widget as Text).data ?? '',
            style: (widget as Text).style ?? textStyle)
        : widget;

    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10),
      width: width ?? 300,
      height: height ?? 50,
      child: ElevatedButton(
          onPressed: onPressed,
          style: ElevatedButton.styleFrom(
            backgroundColor: ColorManager.primaryColor,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(borderRadius),
            ),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              content,
              const SizedBox(width: 10),
              if (trailingWidget != null) trailingWidget!,
            ],
          )),
    );
  }
}
