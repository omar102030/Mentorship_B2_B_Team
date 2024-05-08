import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mentorship/core/helpers/extensions.dart';
import 'package:mentorship/features/cores/logic/cubit/cores_cubit.dart';
import 'package:mentorship/features/cores/logic/cubit/cores_state.dart';
import 'package:mentorship/features/cores/ui/widgets/core_card_widget.dart';
import 'package:mentorship/features/dragons/ui/widgets/list_preview_shimmer.dart';

import '../../../../core/di/get_it_setup.dart';
import '../../../../core/helpers/general_methods.dart';
import '../../../../core/routing/routes.dart';
import '../../../../core/widgets/custom_preview_headline_widget.dart';

class CoresListPreviewWidget extends StatelessWidget {
  const CoresListPreviewWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          getIt<CoresCubit>()..emitGetCoresState(isPaginating: false),
      child: BlocBuilder<CoresCubit, CoresState>(
        builder: (context, state) {
          if (state is CoresLoading) {
            return const ListPreviewShimmer();
          } else if (state is CoresLoaded) {
            return Column(
              children: [
                CustomHeadlineWidget(
                    title: 'Cores',
                    onTab: () {
                      context.pushNamed(
                        Routes.coresScreen,
                      );
                    }),
                10.emptyHight,
                SizedBox(
                  height: 180.h,
                  child: ListView.separated(
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) => CoreCardWidget(
                            core: state.data.cores[index],
                          ),
                      separatorBuilder: (context, index) => 10.emptyWidth,
                      itemCount:
                          state.data.cores.length >= 3 ? 3 : state.data.length),
                )
              ],
            );
          } else if (state is CoresError) {
            showToast(text: state.message, color: Colors.red);
            return const SizedBox();
          }
          return const SizedBox();
        },
      ),
    );
  }
}
