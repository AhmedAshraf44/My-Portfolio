part of 'audio_cubit.dart';

@immutable
sealed class AudioState {}

final class AudioPlayingState extends AudioState {}

final class AudioPausedState extends AudioState {}

// final class AudioChangeHoverState extends AudioState {}
