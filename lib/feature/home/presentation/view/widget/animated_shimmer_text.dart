import 'package:ahmed_ashraf_website/core/app_color.dart';
import 'package:ahmed_ashraf_website/core/app_style.dart';
import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class AnimatedShimmerText extends StatelessWidget {
  const AnimatedShimmerText(
      {super.key,
      required this.text,
      this.style,
      this.baseColor,
      this.highlightColor});
  final String text;
  final TextStyle? style;
  final Color? baseColor;
  final Color? highlightColor;

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: baseColor ?? AppColor.kPrimaryColor,
      highlightColor: highlightColor ?? AppColor.kWhiteColor,
      direction: ShimmerDirection.ltr,
      period: Duration(seconds: 3),
      child: Text(
        text,
        style: style,
      ),
    );
  }
}
