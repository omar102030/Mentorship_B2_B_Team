import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mentorship/features/launches/logic/cubit/launches_cubit.dart';
import 'package:mentorship/features/launches/logic/cubit/launches_state.dart';
import 'package:pull_to_refresh_new/pull_to_refresh.dart';

import '../../../core/di/get_it_setup.dart';
import 'widgets/launch_card.dart';

class LaunchesScreen extends StatefulWidget {
  const LaunchesScreen({super.key});

  @override
  State<LaunchesScreen> createState() => _LaunchesScreenState();
}

class _LaunchesScreenState extends State<LaunchesScreen>
    with AutomaticKeepAliveClientMixin {
  @override
  bool get wantKeepAlive => true;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          getIt<LaunchesCubit>()..emitGetLaunchesState(isPaginating: false),
      child: Scaffold(
        body: BlocBuilder<LaunchesCubit, LaunchesState>(
          builder: (context, state) {
            if (state is LaunchesLoading) {
              return const Center(
                child: CircularProgressIndicator(),
              );
            } else if (state is LaunchesLoaded) {
              return Padding(
                padding: EdgeInsets.only(
                    right: 16.w, left: 16.w, top: 8.h, bottom: 100.h),
                child: SmartRefresher(
                  controller: context.read<LaunchesCubit>().refreshController,
                  physics: const BouncingScrollPhysics(),
                  enablePullUp: true,
                  enablePullDown: false,
                  onLoading: () {
                    context
                        .read<LaunchesCubit>()
                        .emitGetLaunchesState(isPaginating: true);
                  },
                  child: ListView.separated(
                      itemBuilder: (context, index) => LaunchCard(
                            launchModel:
                                context.read<LaunchesCubit>().launches[index],
                          ),
                      separatorBuilder: (context, index) => 15.verticalSpace,
                      itemCount: context.read<LaunchesCubit>().launches.length),
                ),
              );
            } else if (state is LaunchesError) {
              return Text(
                state.message,
                style: const TextStyle(color: Colors.white),
              );
            }
            return const SizedBox();
          },
        ),
      ),
    );
  }
}
