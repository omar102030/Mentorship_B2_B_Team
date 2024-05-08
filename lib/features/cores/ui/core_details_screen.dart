import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mentorship/core/widgets/default_appbar.dart';
import 'package:mentorship/features/cores/data/models/core_model.dart';
import 'package:mentorship/features/cores/ui/widgets/core_info_widget.dart';

import '../../../core/theming/text_styles.dart';
import '../../launches/ui/widgets/related_topic_widget.dart';

class CoreDetailsScreen extends StatefulWidget {
  final Core core;
  const CoreDetailsScreen({super.key, required this.core});

  @override
  State<CoreDetailsScreen> createState() => _CoreDetailsScreenState();
}

class _CoreDetailsScreenState extends State<CoreDetailsScreen> {
  bool startAnimation = false;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      setState(() {
        startAnimation = true;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const DefaultAppBar(),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 10.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CoreInfoWidget(
                infoName: 'Serial',
                infoValue: widget.core.serial,
                startAnimation: startAnimation,
                animationTurn: 0),
            7.verticalSpace,
            CoreInfoWidget(
                infoName: 'Status',
                infoValue: widget.core.status,
                startAnimation: startAnimation,
                animationTurn: 1),
            7.verticalSpace,
            CoreInfoWidget(
                infoName: 'ASDS Attempts',
                startAnimation: startAnimation,
                infoValue: widget.core.asdsAttempts.toString(),
                animationTurn: 2),
            7.verticalSpace,
            CoreInfoWidget(
                infoName: 'ADSD Landings',
                startAnimation: startAnimation,
                infoValue: widget.core.asdsLandings.toString(),
                animationTurn: 3),
            7.verticalSpace,
            CoreInfoWidget(
                infoName: 'Block',
                startAnimation: startAnimation,
                infoValue: widget.core.block != null
                    ? widget.core.block.toString()
                    : 'N/A',
                animationTurn: 4),
            7.verticalSpace,
            CoreInfoWidget(
                infoName: 'Reuse Count',
                startAnimation: startAnimation,
                infoValue: widget.core.reuseCount.toString(),
                animationTurn: 5),
            7.verticalSpace,
            CoreInfoWidget(
                infoName: 'RTLS Attempts',
                startAnimation: startAnimation,
                infoValue: widget.core.rtlsAttempts.toString(),
                animationTurn: 6),
            7.verticalSpace,
            CoreInfoWidget(
                infoName: 'RTLS Landings',
                startAnimation: startAnimation,
                infoValue: widget.core.rtlsLandings.toString(),
                animationTurn: 7),
            7.verticalSpace,
            CoreInfoWidget(
                infoName: 'Serial',
                startAnimation: startAnimation,
                infoValue: widget.core.lastUpdate != null
                    ? widget.core.lastUpdate.toString()
                    : 'N/A',
                animationTurn: 8),
            10.verticalSpace,
            widget.core.launches.isNotEmpty
                ? Text(
                    'Launches :-',
                    style: TextStyles.titleMedium,
                  )
                : const SizedBox(),
            5.verticalSpace,
            ListView.separated(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemBuilder: (context, index) => RelatedTopicWidget(
                    model: widget.core.launches[index],
                    onPressed: () {
                      //! go to the launch details screen by the id
                    }),
                separatorBuilder: (context, index) => 10.verticalSpace,
                itemCount: widget.core.launches.length)
          ],
        ),
      ),
    );
  }
}
