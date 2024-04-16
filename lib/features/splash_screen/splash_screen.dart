import 'dart:async';
import 'package:flutter/material.dart';
import 'package:mentorship/core/helpers/extensions.dart';
import 'package:mentorship/core/routing/routes.dart';
import 'package:mentorship/features/splash_screen/widgets/splash_logo.dart';
import 'package:mentorship/features/splash_screen/widgets/splash_video.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  Timer? timer;
  @override
  void initState() {
    super.initState();
    timer = Timer.periodic(const Duration(seconds: 6), (timer) {
      context.pushNamedAndRemoveUntil(Routes.homeScreen,
          predicate: (route) => false);
    });
  }

  @override
  void dispose() {
    super.dispose();
    timer!.cancel();
  }

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
