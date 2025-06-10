import 'package:ahmed_ashraf_website/core/assets.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:just_audio/just_audio.dart';
import 'dart:html' as html;

part 'audio_state.dart';

class AudioCubit extends Cubit<AudioState> {
  final AudioPlayer _player = AudioPlayer();
  bool _wasPlayingBeforeTabHidden = false; // 👈 track if it was playing
  // bool hovering = false;

  // changeHovering({required bool value}) {
  //   hovering = value;
  //   emit(AudioChangeHoverState());
  // }

  AudioCubit() : super(AudioPausedState()) {
    _init();
    if (kIsWeb) {
      _setupVisibilityListener();
    }
  }

  Future<void> _init() async {
    await _player.setAsset(Assets.audioFile);
    _player.setLoopMode(LoopMode.one);
    _player.playerStateStream.listen((state) {
      if (state.playing) {
        emit(AudioPlayingState());
      } else {
        emit(AudioPausedState());
      }
    });
  }

  void toggle() async {
    if (_player.playing) {
      await _player.pause();
    } else {
      await _player.play();
    }
  }

  void _setupVisibilityListener() {
    html.document.onVisibilityChange.listen((_) {
      final isVisible = !html.document.hidden!;

      if (!isVisible) {
        // Tab is hidden
        if (_player.playing) {
          _wasPlayingBeforeTabHidden = true;
          _player.pause();
        } else {
          _wasPlayingBeforeTabHidden = false;
        }
      } else {
        // Tab is visible again
        if (_wasPlayingBeforeTabHidden) {
          _player.play();
        }
      }
    });
  }

  @override
  Future<void> close() {
    _player.dispose();
    return super.close();
  }
}
