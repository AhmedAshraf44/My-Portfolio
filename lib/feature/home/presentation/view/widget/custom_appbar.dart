import 'package:ahmed_ashraf_website/core/app_color.dart';
import 'package:ahmed_ashraf_website/core/app_style.dart';
import 'package:ahmed_ashraf_website/feature/home/presentation/manger/audio_cubit/audio_cubit.dart';
import 'package:ahmed_ashraf_website/feature/home/presentation/view/widget/custom_audio_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'animated_shimmer_text.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      decoration: BoxDecoration(
        color: AppColor.kWhiteColor.withValues(alpha: .9),
        shape: BoxShape.rectangle,
        border: Border.symmetric(
          horizontal: BorderSide(
            color: AppColor.kBlackColor.withValues(alpha: .1),
            width: 1,
          ),
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: .1),
            offset: Offset(0, 2),
            blurRadius: 4,
            spreadRadius: 1,
          ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Row(
          children: [
            AnimatedShimmerText(
              text: 'Ahmed Ashraf',
              style: AppStyle.stylebold24.copyWith(
                color: AppColor.kPrimaryColor,
              ),
            ),
            const Spacer(flex: 4),
            _buildNavItem('Home'),
            _buildNavItem('About me'),
            _buildNavItem('Skills'),
            _buildNavItem('Experience'),
            _buildNavItem('Projects'),
            _buildNavItem('Contact'),
            const Spacer(flex: 2),
            BlocProvider(
              create: (context) => AudioCubit(),
              child: CustomAudioButton(),
            ),
          ],
        ),
      ),
    );
  }
}

Widget _buildNavItem(String title) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 10),
    child: Text(
      title,
      style: AppStyle.styleMedium16.copyWith(color: AppColor.kBlackColor),
    ),
  );
}
