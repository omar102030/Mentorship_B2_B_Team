import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mentorship/core/helpers/extensions.dart';
import 'package:mentorship/features/company_info/ui/widgets/company_info_card.dart';

import '../topics_screen/enums/topics_enum.dart';

class TopicsGalleryScreen extends StatefulWidget {
  final List<TopicsEnum> topics;
  const TopicsGalleryScreen({super.key, required this.topics});

  @override
  State<TopicsGalleryScreen> createState() => _TopicsGalleryScreenState();
}

class _TopicsGalleryScreenState extends State<TopicsGalleryScreen>
    with AutomaticKeepAliveClientMixin {
  @override
  bool get wantKeepAlive => true;

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 10.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const CompanyInfoCard(),
              10.emptyHight,
              ...widget.topics.map((e) => Padding(
                    padding: EdgeInsets.symmetric(vertical: 5.h),
                    child: e.getTopicDesignWidget,
                  )),
              70.verticalSpace
            ],
          ),
        ),
      ),
    );
  }
}
