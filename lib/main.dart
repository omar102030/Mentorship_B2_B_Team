import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:mentorship/core/di/get_it_setup.dart';
import 'package:mentorship/core/helpers/bloc_observer.dart';
import 'package:mentorship/core/routing/app_router.dart';
import 'package:mentorship/rockets_app.dart';

void main() {
  setupGetIt();
  Bloc.observer = MyBlocObserver();
  runApp(RocketsApp(
    appRouter: AppRouter(),
  ));
}
