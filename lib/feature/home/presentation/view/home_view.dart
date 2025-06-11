import 'package:ahmed_ashraf_website/core/app_color.dart';
import 'package:ahmed_ashraf_website/core/app_style.dart';
import 'package:ahmed_ashraf_website/core/assets.dart';
import 'package:ahmed_ashraf_website/feature/home/presentation/view/widget/adaptive_layout_widget.dart';
import 'package:ahmed_ashraf_website/feature/home/presentation/view/widget/animated_shimmer_text.dart';
import 'package:ahmed_ashraf_website/feature/home/presentation/view/widget/custom_drawer.dart';
import 'package:ahmed_ashraf_website/feature/home/presentation/view/widget/home_desktop_layout.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../core/size_config.dart';
import 'widget/home_mobile_layout.dart';
import 'widget/home_tablet_layout.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      endDrawer: MediaQuery.sizeOf(context).width < SizeConfig.tablet
          ? const CustomDrawer()
          : null,
      appBar: MediaQuery.sizeOf(context).width < SizeConfig.tablet
          ? AppBar(
              leadingWidth: 16,
              title: AnimatedShimmerText(
                text: 'Ahmed Ashraf',
                style: AppStyle.stylebold24.copyWith(
                  color: AppColor.kPrimaryColor,
                ),
              ),
              automaticallyImplyLeading: false,
              actions: [
                Padding(
                  padding: const EdgeInsets.only(right: 16),
                  child: IconButton(
                    onPressed: () {
                      scaffoldKey.currentState!.openEndDrawer();
                    },
                    icon: SvgPicture.asset(
                      Assets.imageMenui,
                    ),
                  ),
                )
              ],
            )
          : null,
      body: AdaptiveLayoutWidget(
        mobileLayout: (context) => const HomeDesktopLayout(),
        tabletLayout: (context) => const HomeDesktopLayout(),
        desktopLayout: (context) => const HomeDesktopLayout(),
      ),
    );
  }
}
