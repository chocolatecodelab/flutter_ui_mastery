import 'package:flutter/material.dart';

class ColorManager {
  // Warna-warna utama
  static const Color primaryColor = Color(0xFF53B175);
  static const Color secondaryColor = Color(0xFFFF9781);
  static const Color backgroundColor = Color(0xFFF5F5F5);
  static const Color errorColor = Color(0xFFB00020);

  // Warna tambahan
  static const Color textColor = Color(0xFF333333);
  static const Color lightGray = Color(0xFFBDBDBD);
  static const Color darkGray = Color(0xFF616161);
  static const Color whiteGrey = Color(0xFFF0F0F0);
  static const Color fieldColor = Color(0xFF969696);
}

class TextManager {
  // Heading Styles
  static const TextStyle textfield = TextStyle(
    fontSize: 12,
    fontWeight: FontWeight.w500,
  );

  static const TextStyle textButton = TextStyle(
    fontSize: 15,
    fontWeight: FontWeight.w700,
  );

  static const TextStyle heading1 = TextStyle(
    fontSize: 32,
    fontWeight: FontWeight.bold,
  );

  static const TextStyle heading2 = TextStyle(
    fontSize: 28,
    fontWeight: FontWeight.bold,
  );

  static const TextStyle heading3 = TextStyle(
    fontSize: 24,
    fontWeight: FontWeight.bold,
  );

  static const TextStyle heading4 = TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.bold,
  );

  static const TextStyle heading5 = TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.bold,
  );

  static const TextStyle heading6 = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.bold,
  );

  // Title Styles
  static const TextStyle title = TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.w600,
  );

  static const TextStyle subtitle = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w500,
  );

  static const TextStyle subtitleGrey = TextStyle(
    fontSize: 16,
    color: ColorManager.darkGray,
    fontWeight: FontWeight.w500,
  );

  // Body Styles
  static const TextStyle bodyLarge = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w400,
  );

  static const TextStyle bodyMedium = TextStyle(
    fontSize: 12,
    fontWeight: FontWeight.w400,
  );

  static const TextStyle bodySmall = TextStyle(
    fontSize: 10,
    fontWeight: FontWeight.w400,
  );

  // Caption Style
  static const TextStyle caption = TextStyle(
    fontSize: 10,
    fontWeight: FontWeight.w300,
    color: Colors.grey,
  );

  // Custom Style with Color
  static TextStyle custom({
    required double fontSize,
    FontWeight fontWeight = FontWeight.normal,
    Color color = Colors.black,
    double letterSpacing = 0.0,
  }) {
    return TextStyle(
      fontSize: fontSize,
      fontWeight: fontWeight,
      color: color,
      letterSpacing: letterSpacing,
    );
  }
}
