import 'package:flutter/material.dart';
import 'package:marquee/marquee.dart';

class ScrollingTextBanner extends StatelessWidget {
  const ScrollingTextBanner(
      {super.key, required this.text, required this.color});
  final String text;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40,
      width: 500,
      child: Marquee(
        text: text,
        style: TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.w500,
          color: color,
        ),
        scrollAxis: Axis.horizontal,
        crossAxisAlignment: CrossAxisAlignment.center,
        blankSpace: 500,
        velocity: 60.0,
        //pauseAfterRound: Duration(seconds: 1),
        startPadding: 10.0,
        accelerationDuration: Duration(seconds: 1),
        accelerationCurve: Curves.linear,
        // decelerationDuration: Duration(milliseconds: 500),
        // decelerationCurve: Curves.easeOut,
      ),
    );
  }
}
