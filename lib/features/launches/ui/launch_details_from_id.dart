import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mentorship/core/di/get_it_setup.dart';
import 'package:mentorship/features/launches/ui/launche_details_screen.dart';

import '../logic/launch_details_cubit/launch_details_cubit.dart';
import '../logic/launch_details_cubit/launch_details_state.dart';

class LaunchDetailsFromId extends StatelessWidget {
  final String launchId;
  const LaunchDetailsFromId({super.key, required this.launchId});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          getIt<LaunchDetailsCubit>()..emitGetLauncheDetails(launchId),
      child: BlocBuilder<LaunchDetailsCubit, LaunchDetailsState>(
        builder: (context, state) {
          if (state is LaunchDetailsLoading) {
            return const SizedBox();
          } else if (state is LaunchDetailsLoaded) {
            return LauncheDetailsScreen(
              launchModel: state.data,
            );
          } else if (state is LaunchDetailsError) {
            return Center(child: Text(state.message));
          }
          return const SizedBox();
        },
      ),
    );
  }
}
