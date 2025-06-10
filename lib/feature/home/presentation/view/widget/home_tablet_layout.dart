import 'dart:async';
import 'dart:math';

import 'package:ahmed_ashraf_website/core/app_style.dart';
import 'package:ahmed_ashraf_website/core/assets.dart';
import 'package:ahmed_ashraf_website/feature/home/presentation/manger/audio_cubit/audio_cubit.dart';
import 'package:ahmed_ashraf_website/feature/home/presentation/view/widget/animated_shimmer_text.dart';
import 'package:ahmed_ashraf_website/feature/home/presentation/view/widget/custom_animated_button.dart';
import 'package:ahmed_ashraf_website/feature/home/presentation/view/widget/custom_audio_button.dart';
import 'package:ahmed_ashraf_website/feature/home/presentation/view/widget/home_section.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeTabletLayout extends StatelessWidget {
  const HomeTabletLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage(Assets.imageBackground1), fit: BoxFit.cover),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          BlocProvider(
            create: (context) => AudioCubit(),
            child: CustomAudioButton(),
          ),
          Row(
            children: [
              //  BuildColumnButtons(),
            ],
          ),
        ],
      ),
    );
  }
}

class AboutMeSection extends StatelessWidget {
  const AboutMeSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        AnimatedShimmerText(text: 'About Me'),
        SizedBox(
          height: 20,
        ),
        Text(
          """Flutter Developer with 1+ year of experience building high-performance, scalable mobile applications across e-commerce, e-learning, and other domains. Passionate about creating efficient, user-friendly apps using modern architectures and clean code practices. Experienced in solving complex problems and continuously improving technical skills. Seeking a challenging opportunity to contribute to impactful mobile development projects.""",
          style: AppStyle.styleRegular14(context),
        ),
      ],
    );
  }
}

// Column(
//         children: [
//           // CustomAppBar(),
//           Expanded(
//             child: Padding(
//               padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 40),
//               child: Column(
//                 children: [
//                   // Expanded(
//                   //   child: HomeSection(),
//                   // ),
//                   // SizedBox(
//                   //   height: 60,
//                   // ),
//                   //AboutMeSection(),
//                 ],
//               ),
//             ),
//           ),
//         ],
//       ),

// change color of text with animation
// class AnimatedTextColor extends StatefulWidget {
//   @override
//   _AnimatedTextColorState createState() => _AnimatedTextColorState();
// }

// class _AnimatedTextColorState extends State<AnimatedTextColor>
//     with SingleTickerProviderStateMixin {
//   late AnimationController _controller;
//   late Animation<Color?> _colorAnimation;

//   @override
//   void initState() {
//     super.initState();

//     _controller = AnimationController(
//       vsync: this,
//       duration: Duration(seconds: 2),
//     )..repeat(reverse: true); // Repeat back and forth

//     _colorAnimation = ColorTween(
//       begin: Colors.white,
//       end: Colors.black12,
//     ).animate(_controller);
//   }

//   @override
//   void dispose() {
//     _controller.dispose(); // Clean up controller when widget is removed
//     super.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return AnimatedBuilder(
//       animation: _colorAnimation,
//       builder: (context, child) {
//         return Text(
//           'Ahmed Ashraf',
//           style: AppStyle.styleBold36.copyWith(color: _colorAnimation.value),
//         );
//       },
//     );
//   }
// }
