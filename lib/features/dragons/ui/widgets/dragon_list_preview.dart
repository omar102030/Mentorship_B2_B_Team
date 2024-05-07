import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mentorship/core/helpers/extensions.dart';
import 'package:mentorship/core/helpers/general_methods.dart';
import 'package:mentorship/core/routing/routes.dart';
import 'package:mentorship/core/widgets/custom_preview_headline_widget.dart';
import 'package:mentorship/features/dragons/logic/dragons_cubit/dragons_cubit.dart';
import 'package:mentorship/features/dragons/logic/dragons_cubit/dragons_state.dart';
import 'package:mentorship/features/dragons/ui/widgets/dragon_card_widget.dart';
import 'package:mentorship/features/dragons/ui/widgets/dragons_preview_shimmer.dart';

import '../../../../core/di/get_it_setup.dart';

class DragonsListPreviewWidget extends StatelessWidget {
  const DragonsListPreviewWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<DragonsCubit>()..emitGetDragons(),
      child: BlocBuilder<DragonsCubit, DragonsState>(
        builder: (context, state) {
          if (state is DragonsLoading) {
            return const DragonsPreviewShimmer();
          } else if (state is DragonsLoaded) {
            return Column(
              children: [
                CustomHeadlineWidget(
                    title: 'Dragons',
                    onTab: () {
                      context.pushNamed(Routes.dragonsScreen,
                          arguments: state.data);
                    }),
                10.emptyHight,
                SizedBox(
                  height: 150.h,
                  child: ListView.separated(
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) => DragonCardWidget(
                            dragonModel: state.data[index],
                          ),
                      separatorBuilder: (context, index) => 10.emptyWidth,
                      itemCount:
                          state.data.length >= 3 ? 3 : state.data.length),
                )
              ],
            );
          } else if (state is DragonsError) {
            showToast(text: state.message, color: Colors.red);
            return const SizedBox();
          }
          return const SizedBox();
        },
      ),
    );
  }
}
