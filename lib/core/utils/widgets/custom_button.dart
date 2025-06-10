import 'package:ahmed_ashraf_website/core/app_style.dart';
import 'package:flutter/material.dart';

import '../../app_color.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key, required this.text, this.onTap});
  final String text;
  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: 50,
        width: 150,
        decoration: BoxDecoration(
          color: AppColor.kWhiteColor,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Center(
          child: Text(
            text,
            style: AppStyle.styleSemiBold16.copyWith(
              color: AppColor.kPrimaryColor,
            ),
          ),
        ),
      ),
    );
  }
}
