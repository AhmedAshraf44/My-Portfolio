import 'package:flutter/material.dart';

class AppColor {
  AppColor._();

  static const Color kPrimaryColor = Color(0xFF2563EB);
  static const Color kSecondColor = Color(0xFF1D4ED8);
  static const Color kThirdColor = Color(0xFF1E40AF);
  static const Color kWhiteColor = Colors.white;
  static const Color kBlackColor = Colors.black;
  //1E1E1E   //1E3E62 1E1E1E
  //static const Color kBackgroundColor = Color(0xff232323);
  //static const Color kTextColor = Color(0xff000088);
  //static const Color kTextColor = Color(0xff123458);
  // static const Color kBackgroundColor2 = Color(0xff1E1E1E);
  // static Color kTextColor2 = Color(0xff232323);
  // static const Color kTextColor = Color(0xff123458);
  // static const Color kFluttetrColor = Color(0xff54C5F8);
  // static const Color kFluttetrColor2 = Color(0xff01579B);
  static const LinearGradient backgroundGradient = LinearGradient(
    colors: [
      Color(0xFFEFF6FF), // blue-50
      kWhiteColor,
      Color(0xFFFAF5FF), // purple-50
    ],
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
  );

  // Skills/Experience: from-gray-50 to-blue-50
  static const LinearGradient skillsExperienceGradient = LinearGradient(
    colors: [
      Color(0xFFF9FAFB),
      Color(0xFFEFF6FF), // blue-50
    ],
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
  );
}
