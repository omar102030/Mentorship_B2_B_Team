import 'package:flutter/material.dart';
import 'package:mentorship/core/di/get_it_setup.dart';
import 'package:mentorship/core/routing/app_router.dart';
import 'package:mentorship/rockets_app.dart';

void main() {
  setupGetIt();
  runApp(RocketsApp(
    appRouter: AppRouter(),
  ));
}
