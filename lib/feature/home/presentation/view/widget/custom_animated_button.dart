import 'package:ahmed_ashraf_website/core/app_color.dart';
import 'package:ahmed_ashraf_website/core/app_style.dart';
import 'package:ahmed_ashraf_website/core/constants.dart';
import 'package:flutter/material.dart';

class CustomAnimatedButton extends StatefulWidget {
  const CustomAnimatedButton({super.key, required this.text, this.onTap});
  final String text;
  final void Function()? onTap;
  @override
  State<CustomAnimatedButton> createState() => _CustomAnimatedButtonState();
}

class _CustomAnimatedButtonState extends State<CustomAnimatedButton> {
  bool _hovering = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) => setState(() => _hovering = true),
      onExit: (_) => setState(() => _hovering = false),
      child: InkWell(
        onTap: widget.onTap,
        child: Container(
          height: 50,
          width: 200,
          clipBehavior: Clip.hardEdge,
          decoration: BoxDecoration(
            color: AppColor.kWhiteColor,
            borderRadius: BorderRadius.circular(8),
          ),
          child: Stack(
            children: [
              AnimatedPositioned(
                duration: const Duration(milliseconds: 200),
                curve: Curves.easeInOutCubic, // mimics cubic-bezier
                left: _hovering ? 0 : -200,
                top: 0,
                right: _hovering ? 0 : null,
                bottom: 0,
                child: Container(
                  width: 200,
                  decoration: BoxDecoration(
                    color: AppColor.kPrimaryColor.withOpacity(0.3),
                  ),
                ),
              ),
              Center(
                child: Text(
                  widget.text,
                  style: AppStyle.stylebold16.copyWith(
                    color: AppColor.kPrimaryColor,
                    fontFamily: kMajorMonoDisplay,
                    shadows: [
                      Shadow(
                        offset: Offset(0, 0),
                        blurRadius: 20,
                        color: Color.fromRGBO(0, 0, 0, 0.27),
                        // color: Color.fromRGBO(255, 255, 255, 1),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
