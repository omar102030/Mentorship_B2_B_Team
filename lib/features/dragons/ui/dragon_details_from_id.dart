import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mentorship/features/dragons/logic/dragon_details_cubit/dragon_details_cubit.dart';
import 'package:mentorship/features/dragons/logic/dragon_details_cubit/dragon_details_state.dart';
import 'package:mentorship/features/dragons/ui/dragon_details_screen.dart';

import '../../../core/di/get_it_setup.dart';

class DragonDetailsFromIdScreen extends StatelessWidget {
  final String dragonId;
  const DragonDetailsFromIdScreen({super.key, required this.dragonId});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          getIt<DragonDetailsCubit>()..emitGetDragonDetails(dragonId),
      child: BlocBuilder<DragonDetailsCubit, DragonDetailsState>(
        builder: (context, state) {
          if (state is DragonDetailsLoading) {
            return const SizedBox();
          } else if (state is DragonDetailsLoaded) {
            return DragonDetailsScreen(
              model: state.data,
            );
          } else if (state is DragonDetailsError) {
            return Center(child: Text(state.message));
          }
          return const SizedBox();
        },
      ),
    );
  }
}
