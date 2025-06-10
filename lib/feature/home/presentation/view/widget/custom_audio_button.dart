import 'package:ahmed_ashraf_website/core/app_color.dart';
import 'package:ahmed_ashraf_website/core/app_style.dart';
import 'package:ahmed_ashraf_website/core/assets.dart';
import 'package:ahmed_ashraf_website/feature/home/presentation/manger/audio_cubit/audio_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomAudioButton extends StatefulWidget {
  const CustomAudioButton({super.key});

  @override
  State<CustomAudioButton> createState() => _CustomAudioButtonState();
}

class _CustomAudioButtonState extends State<CustomAudioButton> {
  bool _hovering = false;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AudioCubit, AudioState>(
      builder: (context, state) {
        //bool hovering = BlocProvider.of<AudioCubit>(context).hovering;
        final isPlaying = state is AudioPlayingState;
        return MouseRegion(
          onEnter: (_) => setState(() => _hovering = true),
          onExit: (_) => setState(() => _hovering = false),
          child: InkWell(
            onTap: () => context.read<AudioCubit>().toggle(),
            child: Container(
              decoration: BoxDecoration(
                color: isPlaying
                    ? AppColor.kPrimaryColor.withValues(alpha: 0.1)
                    : AppColor.kWhiteColor,
                borderRadius: BorderRadius.circular(8),
                border: Border.all(
                  color: AppColor.kBlackColor.withValues(alpha: 0.1),
                  width: 1,
                ),
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(8),
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
                          borderRadius: BorderRadius.circular(8),
                          color: AppColor.kPrimaryColor.withOpacity(0.3),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 15, vertical: 10),
                      child: Row(
                        // crossAxisAlignment: CrossAxisAlignment.end,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SvgPicture.asset(
                            Assets.imageMusicSolid,
                            width: 12,
                            height: 12,
                            colorFilter: ColorFilter.mode(
                              isPlaying
                                  ? AppColor.kPrimaryColor
                                  : AppColor.kBlackColor,
                              BlendMode.srcIn,
                            ),
                          ),
                          SizedBox(width: 10),
                          Text(isPlaying ? 'Pause Music' : 'Play Music',
                              style: AppStyle.styleSemiBold13.copyWith(
                                color: isPlaying
                                    ? AppColor.kPrimaryColor
                                    : AppColor.kBlackColor,
                              )),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
