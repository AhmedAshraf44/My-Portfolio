import 'package:ahmed_ashraf_website/feature/home/presentation/view/widget/shaking_avatar.dart';
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

class HoverableImage extends StatefulWidget {
  const HoverableImage({super.key});

  @override
  State<HoverableImage> createState() => _HoverableImageState();
}

class _HoverableImageState extends State<HoverableImage> {
  bool _isHovered = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) => setState(() => _isHovered = true),
      onExit: (_) => setState(() => _isHovered = false),
      child: AnimatedScale(
        scale: _isHovered ? 1.05 : 1.0,
        duration: const Duration(milliseconds: 300),
        child: Stack(
          alignment: Alignment.center,
          children: [
            Container(
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.25),
                    offset: const Offset(0, 25),
                    blurRadius: 50,
                  ),
                ],
              ),
              child: ShakingAvatar(),
            ),
            if (_isHovered)
              Container(
                width: MediaQuery.sizeOf(context).width * 0.2,
                height: MediaQuery.sizeOf(context).width * 0.2,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color:
                      AppColor.kWhiteColor.withOpacity(0.1), // overlay effect
                ),
              ),
          ],
        ),
      ),
    );
  }
}
