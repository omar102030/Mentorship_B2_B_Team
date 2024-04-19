import 'dart:async';

import 'package:flutter/material.dart';
import 'package:mentorship/core/helpers/extensions.dart';
import 'package:video_player/video_player.dart';

import '../../../core/routing/routes.dart';

class SplashVideo extends StatefulWidget {
  const SplashVideo({super.key});
  @override
  State<SplashVideo> createState() => _SplashVideoState();
}

class _SplashVideoState extends State<SplashVideo> {
  late VideoPlayerController _controller;
  late Timer _timer;

  @override
  void initState() {
    super.initState();
    _timer = Timer.periodic(const Duration(seconds: 6), (timer) {
      context.pushNamedAndRemoveUntil(Routes.onBoardingScreen,
          predicate: (route) => false);
    });
    _controller = VideoPlayerController.asset('assets/videos/splash_video.mp4')
      ..addListener(_updateState)
      ..setLooping(true)
      ..initialize().then((_) => _controller.play()).catchError((error) {});
  }

  void _updateState() {
    setState(() {});
  }

  @override
  void dispose() {
    _controller.removeListener(_updateState);
    _controller.dispose();
    _timer.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _controller.value.isInitialized
          ? SizedBox.expand(
              child: FittedBox(
                fit: BoxFit.cover,
                child: SizedBox(
                  width: _controller.value.size.width,
                  height: _controller.value.size.height,
                  child: AspectRatio(
                      aspectRatio: _controller.value.aspectRatio,
                      child: VideoPlayer(_controller)),
                ),
              ),
            )
          : const SizedBox(),
    );
  }
}
