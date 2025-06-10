import 'dart:async';
import 'dart:math';
import 'package:flutter/material.dart';

import '../../../../../core/app_color.dart';

class CustomMusicIcon extends StatefulWidget {
  final bool isAnimating;

  const CustomMusicIcon({super.key, required this.isAnimating});

  @override
  State<CustomMusicIcon> createState() => _CustomMusicIconState();
}

class _CustomMusicIconState extends State<CustomMusicIcon>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  final Random _random = Random();
  List<double> barHeights = List.filled(6, 3);
  int currentIndex = 0;
  Timer? _timer;

  @override
  void initState() {
    super.initState();
    if (widget.isAnimating) {
      _startAnimation();
    }
  }

  @override
  void didUpdateWidget(covariant CustomMusicIcon oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (widget.isAnimating && !oldWidget.isAnimating) {
      _startAnimation();
    } else if (!widget.isAnimating && oldWidget.isAnimating) {
      _stopAnimation();
    }
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Transform.translate(
      offset: const Offset(0, -5),
      child: Container(
        //margin: const EdgeInsets.only(right: 0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: barHeights.map((height) {
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 0),
              child: AnimatedContainer(
                duration: const Duration(milliseconds: 200),
                width: 1.5,
                height: height,
                color: AppColor.kBlackColor,
              ),
            );
          }).toList(),
        ),
      ),
    );
  }

  void _startAnimation() {
    _timer?.cancel();
    _timer = Timer.periodic(const Duration(milliseconds: 200), (timer) {
      setState(() {
        barHeights[currentIndex] = _random.nextInt(15) + 5.0;
        currentIndex = (currentIndex + 1) % barHeights.length;
      });
    });
  }

  void _stopAnimation() {
    _timer?.cancel();
    setState(() {
      barHeights = List.filled(barHeights.length, 3);
    });
  }
}
