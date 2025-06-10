import 'package:ahmed_ashraf_website/core/app_color.dart';
import 'package:ahmed_ashraf_website/core/size_config.dart';
import 'package:flutter/material.dart';

abstract class AppStyle {
  // Section Headings: About Us, Skills, Experience... (30px → 36px)
  static const TextStyle sectionTitle = TextStyle(
    fontSize: 36,
    fontWeight: FontWeight.bold,
  );

  // Subheadings: Passionate Flutter Developer, Navbar logo (24px)
  static const TextStyle stylebold24 = TextStyle(
    fontSize: 24,
    fontWeight: FontWeight.bold,
  );

  // Hero Description, Contact Welcome, ProjectCard Title (20px)
  static const TextStyle largeText = TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.w600,
  );

  // About descriptions, Experience company name (18px)
  static const TextStyle mediumText = TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.w500,
  );

  // Default body text (16px)
  static const TextStyle baseText = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.normal,
  );

  // Small text: dates, skills, tags (14px)
  static const TextStyle smallText = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.normal,
  );

  // static const List<String> _systemFontFallback = [
  //   '-apple-system',
  //   'BlinkMacSystemFont',
  //   'Segoe UI',
  //   'Roboto',
  //   'sans-serif',
  // ];

  static TextStyle styleSemiBold13 = TextStyle(
    color: AppColor.kBlackColor,
    fontSize: 13,
    fontWeight: FontWeight.w600,
  );
  static TextStyle stylebold16 = TextStyle(
    color: AppColor.kBlackColor,
    fontSize: 16,
    fontWeight: FontWeight.bold,
  );

  static TextStyle styleMedium16 = TextStyle(
    color: AppColor.kBlackColor,
    fontSize: 16,
    fontWeight: FontWeight.w500,
  );

  static TextStyle styleSemiBold16 = TextStyle(
    color: AppColor.kBlackColor,
    fontSize: 16,
    fontWeight: FontWeight.w600,
  );
  static const TextStyle styleBold60 = TextStyle(
    fontSize: 60,
    fontWeight: FontWeight.bold,
  );

  // static TextStyle styleSemiBold20(context) => TextStyle(
  //     //color: kPrimaryColor,
  //     fontSize: getResponsiveFontSize(context, fontSize: 20),
  //     fontWeight: FontWeight.w600);
  // static TextStyle styleRegular12(context) => TextStyle(
  //     //color: kItemsBackgroundColor,
  //     fontSize: getResponsiveFontSize(context, fontSize: 12),
  //     fontWeight: FontWeight.w400);

  // static TextStyle styleSemiBold24(context) => TextStyle(
  //     // color: kSecondColor,
  //     fontSize: getResponsiveFontSize(context, fontSize: 24),
  //     fontWeight: FontWeight.w600);

  // static TextStyle styleSemiBold18(context) => TextStyle(
  //     //color: kWhiteColor,
  //     fontSize: getResponsiveFontSize(context, fontSize: 18),
  //     fontWeight: FontWeight.w600);

  static TextStyle styleRegular14(context) => TextStyle(
      color: AppColor.kBlackColor,
      fontSize: getResponsiveFontSize(context, fontSize: 14),
      fontWeight: FontWeight.w400);
  static TextStyle styleBold36 = TextStyle(
      // color: kSecondColor,
      fontSize: 36,
      fontWeight: FontWeight.bold);
}

double getResponsiveFontSize(context, {required double fontSize}) {
  double scaleFactor = getScaleFactor(context);
  double responsiveFontSize = fontSize * scaleFactor;
  double lowerLimit = fontSize * 0.8;
  double upperLimit = fontSize * 1.2;
  return responsiveFontSize.clamp(lowerLimit, upperLimit);
}

double getScaleFactor(context) {
  double width = MediaQuery.sizeOf(context).width;
  // var dispatcher = PlatformDispatcher.instance;
  // var physicalWidth = dispatcher.views.first.physicalSize.width;
  // var devicePixelRatio = dispatcher.views.first.devicePixelRatio;
  // double width = physicalWidth / devicePixelRatio;
  if (width < SizeConfig.tablet) {
    return width / 550;
  } else if (width < SizeConfig.desktop) {
    return width / 1000;
  } else {
    return width / 1920;
  }
}
