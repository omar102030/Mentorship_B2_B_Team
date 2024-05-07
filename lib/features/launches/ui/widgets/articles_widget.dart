import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mentorship/core/helpers/extensions.dart';

import '../../../../core/assets/app_assets.dart';
import '../../../../core/routing/routes.dart';

class ArticlesWidget extends StatelessWidget {
  final String? wikipedia;
  final String? presskit;
  final String? article;
  const ArticlesWidget(
      {super.key,
      required this.wikipedia,
      required this.presskit,
      required this.article});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: 10.h),
      child: Row(
        children: [
          wikipedia != null
              ? Padding(
                  padding: EdgeInsets.only(right: 15.w),
                  child: InkWell(
                    onTap: () {
                      context.pushNamed(Routes.webViewScreen,
                          arguments: wikipedia);
                    },
                    child: Image.asset(
                      AppImages.wikipediaImage,
                      height: 40.h,
                    ),
                  ),
                )
              : const SizedBox(),
          presskit != null
              ? Padding(
                  padding: EdgeInsets.only(right: 15.w),
                  child: InkWell(
                    onTap: () {
                      context.pushNamed(Routes.webViewScreen,
                          arguments: presskit);
                    },
                    child: const Icon(
                      Icons.newspaper_sharp,
                      color: Colors.white,
                      size: 40,
                    ),
                  ),
                )
              : const SizedBox(),
          article != null
              ? InkWell(
                  onTap: () {
                    context.pushNamed(Routes.webViewScreen, arguments: article);
                  },
                  child: const Icon(
                    Icons.article,
                    color: Colors.white,
                    size: 40,
                  ),
                )
              : const SizedBox(),
        ],
      ),
    );
  }
}