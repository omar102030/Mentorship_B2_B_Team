import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mentorship/core/widgets/default_appbar.dart';
import 'package:mentorship/features/cores/logic/cubit/cores_cubit.dart';
import 'package:mentorship/features/cores/ui/widgets/core_card_widget.dart';
import 'package:pull_to_refresh_new/pull_to_refresh.dart';

import '../../../core/di/get_it_setup.dart';
import '../logic/cubit/cores_state.dart';

class CoresScreen extends StatelessWidget {
  const CoresScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const DefaultAppBar(),
      body: BlocProvider.value(
        value: getIt<CoresCubit>(),
        child: Scaffold(
          body: BlocBuilder<CoresCubit, CoresState>(
            builder: (context, state) {
              if (state is CoresLoading) {
                return const Center(
                  child: CircularProgressIndicator(),
                );
              } else if (state is CoresLoaded) {
                return Padding(
                  padding: EdgeInsets.only(
                      right: 16.w, left: 16.w, top: 8.h, bottom: 8.h),
                  child: SmartRefresher(
                    controller: context.read<CoresCubit>().refreshController,
                    physics: const BouncingScrollPhysics(),
                    enablePullUp: true,
                    enablePullDown: false,
                    onLoading: () {
                      context
                          .read<CoresCubit>()
                          .emitGetCoresState(isPaginating: true);
                    },
                    child: ListView.separated(
                        itemBuilder: (context, index) => CoreCardWidget(
                              core: context.read<CoresCubit>().cores[index],
                            ),
                        separatorBuilder: (context, index) => 15.verticalSpace,
                        itemCount: context.read<CoresCubit>().cores.length),
                  ),
                );
              } else if (state is CoresError) {
                return Text(
                  state.message,
                  style: const TextStyle(color: Colors.white),
                );
              }
              return const SizedBox();
            },
          ),
        ),
      ),
    );
  }
}
