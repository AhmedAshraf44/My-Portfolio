import 'package:flutter/material.dart';

class SizeConfig {
  static const double desktop = 1290;
  static const double tablet = 700;

  static late double height, width;
  static int(BuildContext context) {
    width = MediaQuery.sizeOf(context).width;
    height = MediaQuery.sizeOf(context).height;
  }
}
