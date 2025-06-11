import 'package:flutter/material.dart';
import '../../../../../core/assets.dart';

class ShakingAvatar extends StatefulWidget {
  const ShakingAvatar({super.key});

  @override
  State<ShakingAvatar> createState() => _ShakingAvatarState();
}

class _ShakingAvatarState extends State<ShakingAvatar>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 500),
    );

    _animation = Tween<double>(begin: -0.06, end: 0.06)
        .chain(CurveTween(curve: Curves.elasticIn))
        .animate(_controller);

    _controller.repeat(reverse: true);

    Future.delayed(const Duration(seconds: 4), () {
      _controller.stop();
      _controller.reset();
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _animation,
      builder: (context, child) {
        return Transform.rotate(
          angle: _animation.value,
          child: child,
        );
      },
      child: CircleAvatar(
        radius: MediaQuery.sizeOf(context).width * 0.1,
        backgroundImage: AssetImage(Assets.imageAhemd),
      ),
    );
  }
}
