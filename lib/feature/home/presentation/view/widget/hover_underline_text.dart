import 'package:flutter/material.dart';

import '../../../../../core/app_color.dart';

class HoverUnderlineText extends StatefulWidget {
  const HoverUnderlineText({super.key, required this.text});
  final String text;
  @override
  State<HoverUnderlineText> createState() => _HoverUnderlineTextState();
}

class _HoverUnderlineTextState extends State<HoverUnderlineText> {
  bool _isHovering = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) => setState(() => _isHovering = true),
      onExit: (_) => setState(() => _isHovering = false),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start, // ضروري يبدأ من اليسار
        children: [
          Text(
            widget.text,
            style: const TextStyle(fontSize: 14, color: AppColor.kBlackColor),
          ),
          AnimatedContainer(
            duration: const Duration(milliseconds: 200),
            height: 2,
            width: _isHovering ? 60 : 0,
            color: AppColor.kBlackColor,
            curve: Curves.easeOut,
          ),
        ],
      ),
    );
  }
}
