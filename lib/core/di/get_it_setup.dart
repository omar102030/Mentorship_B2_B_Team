import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:mentorship/core/networking/api_service.dart';
import 'package:mentorship/core/networking/dio_factory.dart';
import 'package:mentorship/features/dragons/data/repos/dargons_repo.dart';
import 'package:mentorship/features/launchpad/data/repositories/launchpad_repo.dart';

import '../../features/dragons/logic/dragons_cubit/dragons_cubit.dart';

final getIt = GetIt.instance;

void setupGetIt() {
// serviceLocator.registerSingleton<example>(() => example());
  Dio dio = DioFactory.getDio();
  getIt.registerLazySingleton<ApiService>(() => ApiService(dio));

  getIt.registerLazySingleton<LaunchpadRepo>(
      () => LaunchpadRepo(getIt<ApiService>()));

  getIt.registerLazySingleton<DragonsRepo>(
      () => DragonsRepo(getIt<ApiService>()));
  getIt.registerFactory<DragonsCubit>(() => DragonsCubit(getIt<DragonsRepo>()));
}
