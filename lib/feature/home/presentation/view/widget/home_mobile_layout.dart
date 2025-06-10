import 'package:ahmed_ashraf_website/core/app_color.dart';
import 'package:ahmed_ashraf_website/feature/home/presentation/view/widget/home_section.dart';
import 'package:ahmed_ashraf_website/feature/home/presentation/view/widget/home_tablet_layout.dart';
import 'package:flutter/material.dart';

class HomeMobileLayout extends StatelessWidget {
  const HomeMobileLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Container(
        color: AppColor.kWhiteColor,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 40),
          child: Column(
            children: [
              Expanded(
                child: HomeSection(),
              ),
              SizedBox(
                height: 60,
              ),
              AboutMeSection(),
            ],
          ),
        ),
      ),
    );
  }
}
