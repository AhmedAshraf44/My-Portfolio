import 'package:ahmed_ashraf_website/feature/home/presentation/view/widget/custom_appbar.dart';
import 'package:ahmed_ashraf_website/feature/home/presentation/view/widget/home_section.dart';
import 'package:ahmed_ashraf_website/feature/home/presentation/view/widget/home_tablet_layout.dart';
import 'package:flutter/material.dart';

class HomeDesktopLayout extends StatelessWidget {
  const HomeDesktopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomAppBar(),
        Expanded(
          child: SingleChildScrollView(
            child: Column(
              children: [
                HomeSection(),
                SizedBox(
                  height: 60,
                ),
                AboutMeSection(),
              ],
            ),
          ),
        ),

        // Expanded(
        //   child: Container(
        //     color: AppColor.kWhiteColor,
        //     child: Padding(
        //       padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 40),
        //       child: Column(
        //         children: [
        //           Expanded(
        //             child: HomeSection(),
        //           ),
        //           SizedBox(
        //             height: 60,
        //           ),
        //           AboutMeSection(),
        //         ],
        //       ),
        //     ),
        //   ),
        // ),
      ],
    );
  }
}
