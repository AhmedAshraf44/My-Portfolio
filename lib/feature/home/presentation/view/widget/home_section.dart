import 'package:ahmed_ashraf_website/core/app_color.dart';
import 'package:ahmed_ashraf_website/core/app_style.dart';
import 'package:ahmed_ashraf_website/core/assets.dart';
import 'package:ahmed_ashraf_website/core/function/open_launch_url.dart';
import 'package:ahmed_ashraf_website/feature/home/presentation/view/widget/animated_shimmer_text.dart';
import 'package:ahmed_ashraf_website/feature/home/presentation/view/widget/animated_typing_text.dart';
import 'package:ahmed_ashraf_website/feature/home/presentation/view/widget/custom_animated_button.dart';
import 'package:ahmed_ashraf_website/feature/home/presentation/view/widget/hover_underline_text.dart';
import 'package:ahmed_ashraf_website/feature/home/presentation/view/widget/scrolling_text_banner.dart';
import 'package:flutter/material.dart';

import 'shaking_avatar.dart';

class HomeSection extends StatelessWidget {
  const HomeSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.sizeOf(context).width,
      height: MediaQuery.sizeOf(context).height + 50,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            AppColor.kPrimaryColor, // blue-600
            Color(0xFF9333EA), // purple-600
            AppColor.kThirdColor, // blue-800
          ],
          begin: Alignment.centerLeft,
          end: Alignment.centerRight,
        ),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          HoverableImage(),
          //ShakingAvatar(),
          SizedBox(height: 20),
          AnimatedShimmerText(
            text: 'Ahmed Ashraf',
            baseColor: AppColor.kWhiteColor,
            highlightColor: AppColor.kSecondColor,
            style: AppStyle.styleBold60.copyWith(
              color: AppColor.kWhiteColor,
            ),
          ),
          SizedBox(
            height: 5,
          ),
          AnimatedTypingText(
            text: 'Flutter Developer',
            style: AppStyle.stylebold24.copyWith(
              color: AppColor.kWhiteColor,
            ),
          ),
          ScrollingTextBanner(
            text:
                'I craft high-performance, beautifully designed cross-platform apps for Android, iOS, Web, and Windows. ',
            color: AppColor.kBlackColor,
          ),
          SizedBox(
            height: 20,
          ),
          CustomAnimatedButton(
            text: 'Download CV',
            onTap: openExternalLink,
          ),
        ],
      ),
    );
  }
}
