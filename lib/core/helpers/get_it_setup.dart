import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:mentorship/core/networking/api_service.dart';
import 'package:mentorship/core/networking/dio_factory.dart';
import 'package:mentorship/features/launchpad/data/repositories/launchpad_repo.dart';

final serviceLocator = GetIt.instance;

void setupLocator() {
// serviceLocator.registerSingleton<example>(() => example());
  Dio dio = DioFactory.getDio();
  serviceLocator.registerLazySingleton<ApiService>(() => ApiService(dio));

  serviceLocator.registerLazySingleton<LaunchpadRepo>(() => LaunchpadRepo(serviceLocator<ApiService>()));




}
