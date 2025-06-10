import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';

class AnimatedTypingText extends StatelessWidget {
  const AnimatedTypingText({super.key, required this.text, this.style});
  final String text;
  final TextStyle? style;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: AnimatedTextKit(
        animatedTexts: [
          TypewriterAnimatedText(
            text,
            textStyle: style,
            speed: const Duration(milliseconds: 100),
            cursor: '|',
          ),
        ],
        isRepeatingAnimation: true,
        repeatForever: true,
        pause: const Duration(seconds: 1),
        totalRepeatCount: 999999, // أو استخدم repeatForever
        displayFullTextOnTap: false,
        stopPauseOnTap: false,
      ),
    );
  }
}
