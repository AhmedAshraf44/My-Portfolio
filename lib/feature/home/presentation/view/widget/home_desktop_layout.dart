import 'package:ahmed_ashraf_website/core/app_color.dart';
import 'package:ahmed_ashraf_website/core/app_style.dart';
import 'package:ahmed_ashraf_website/feature/home/presentation/view/widget/custom_appbar.dart';
import 'package:ahmed_ashraf_website/feature/home/presentation/view/widget/home_section.dart';
import 'package:ahmed_ashraf_website/feature/home/presentation/view/widget/home_tablet_layout.dart';
import 'package:flutter/material.dart';

import 'animated_shimmer_text.dart';

class HomeDesktopLayout extends StatelessWidget {
  const HomeDesktopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        CustomScrollWidget(),
        CustomAppBar(),
      ],
    );
  }
}

class CustomScrollWidget extends StatelessWidget {
  const CustomScrollWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverFillRemaining(
          hasScrollBody: false,
          child: Column(
            children: [
              HomeSection(),
              Container(
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: AppColor.kWhiteColor,
                      offset: const Offset(0, 200),
                      blurRadius: 60, // حجم التشويش (كلما زاد كلما كان أنعم)
                      spreadRadius: 250, // مدى الانتشار
                    ),
                  ],
                  gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: [
                      Color(0xFFEFF6FF), // blue-50
                      Colors.white, // via-white
                      Color(0xFFF5F3FF), // purple-50
                    ],
                  ),
                ),
                child: AboutMeSection(),
              ),
              Container(
                decoration: BoxDecoration(
                  gradient: AppColor.skillsExperienceGradient,
                ),
                child: SkillsSection(),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class SkillsSection extends StatelessWidget {
  const SkillsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AnimatedShimmerText(
          text: 'Skills',
          style: AppStyle.sectionTitle,
        ),
      ],
    );
  }
}
