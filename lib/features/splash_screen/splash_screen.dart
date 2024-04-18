import 'package:flutter/material.dart';
import 'package:mentorship/features/splash_screen/widgets/splash_logo.dart';
import 'package:mentorship/features/splash_screen/widgets/splash_video.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Stack(
          alignment: Alignment.bottomCenter,
          children: [SplashVideo(), SplashLogo()],
        ),
      ),
    );
  }
}
