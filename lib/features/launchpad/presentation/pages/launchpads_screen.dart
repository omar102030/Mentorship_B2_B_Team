import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mentorship/features/launchpad/presentation/cubit/launchpad_state.dart';

import '../../../../core/sharedWidgets/default_appbar.dart';
import '../cubit/launchpad_cubit.dart';
import '../widgets/launchpad_card.dart';

class LaunchpadsScreen extends StatefulWidget {
  const LaunchpadsScreen({super.key});

  @override
  _LaunchpadsScreenState createState() => _LaunchpadsScreenState();
}

class _LaunchpadsScreenState extends State<LaunchpadsScreen> {
  late LaunchpadCubit _launchpadCubit;

  @override
  void initState() {
    super.initState();
    _launchpadCubit = BlocProvider.of<LaunchpadCubit>(context);
    _launchpadCubit.getLaunchpads();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LaunchpadCubit, LaunchpadState>(
        builder: (context, state) {
          if (state is LaunchpadLoading) {
            return const Center(child: CircularProgressIndicator());
          } else if (state is LaunchpadLoaded) {
            return ListView.builder(
              itemCount: state.data.length,
              itemBuilder: (context, index) {
                return LaunchpadCard(
                  launchpad: state.data[index],
                );
              },
            );
          } else if (state is LaunchpadError) {
            return Center(child: Text(state.message));
          }
          return Container();
        },
      );
  }
}
