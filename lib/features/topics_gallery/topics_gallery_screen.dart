import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mentorship/core/helpers/extensions.dart';
import 'package:mentorship/features/company_info/ui/widgets/company_info_card.dart';

import '../../core/theming/text_styles.dart';
import '../topics_screen/enums/topics_enum.dart';

class TopicsGalleryScreen extends StatelessWidget {
  final List<TopicsEnum> topics;
  const TopicsGalleryScreen({super.key, required this.topics});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 10.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Company Info :-',
              style: TextStyles.titleMedium,
            ),
            10.emptyHight,
            const CompanyInfoCard(),
            20.emptyHight,
            ...topics.map((e) => e.getTopicDesignWidget)
          ],
        ),
      ),
    );
  }
}
