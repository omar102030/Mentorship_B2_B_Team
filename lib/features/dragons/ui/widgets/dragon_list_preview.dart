import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mentorship/core/helpers/extensions.dart';
import 'package:mentorship/core/theming/text_styles.dart';
import 'package:mentorship/features/dragons/logic/cubit/dragons_cubit.dart';
import 'package:mentorship/features/dragons/logic/cubit/dragons_state.dart';
import 'package:mentorship/features/dragons/ui/widgets/dragon_card_widget.dart';
import 'package:shimmer/shimmer.dart';

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
            return Shimmer.fromColors(
                baseColor: Colors.grey[500]!,
                highlightColor: Colors.grey[300]!,
                child: Row(
                  children: [
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                            color: Colors.grey[400],
                            borderRadius: BorderRadius.circular(10.r)),
                        height: 150.h,
                      ),
                    ),
                    10.pw,
                    Expanded(
                      child: Container(
                        height: 150.h,
                        decoration: BoxDecoration(
                            color: Colors.grey[400],
                            borderRadius: BorderRadius.circular(10.r)),
                      ),
                    ),
                  ],
                ));
          } else if (state is DragonsLoaded) {
            return Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Dragons',
                      style: TextStyles.titleMedium,
                    ),
                    InkWell(
                      onTap: () {},
                      child: Text(
                        'View All',
                        style: TextStyles.bodySmall,
                      ),
                    )
                  ],
                ),
                10.ph,
                SizedBox(
                  height: 150.h,
                  child: ListView.separated(
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) =>
                          DragonHorizontalCardWidget(
                            dragonModel: state.data[index],
                          ),
                      separatorBuilder: (context, index) => 10.pw,
                      itemCount: state.data.length),
                )
              ],
            );
          } else if (state is DragonsError) {
            return Center(child: Text(state.message));
          }
          return const SizedBox();
        },
      ),
    );
  }
}
