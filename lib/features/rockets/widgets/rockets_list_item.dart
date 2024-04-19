import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mentorship/core/theming/colors_manager.dart';
import 'package:mentorship/core/theming/text_styles.dart';

class RocketsListItem extends StatelessWidget {
  const RocketsListItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 235.h,
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          ClipRRect(
              borderRadius: BorderRadius.circular(5.r),
              child:  Image.network("https://imgur.com/DaCfMsj.jpg", width: double.infinity,fit: BoxFit.cover,)),
          Container(
            height: 70.h,
            decoration: BoxDecoration(
              boxShadow: [BoxShadow(
                color: ColorsManager.scaffoldColor.withOpacity(0.47),
                blurRadius: 8.r,
              )],
            ),
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 10.h),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Falcon 1", style: TextStyles.titleLarge,),
                  Container(
                    height: 30.h,
                    decoration: BoxDecoration(
                        color: ColorsManager.darkNavyBlueColor,
                      borderRadius: BorderRadius.circular(15.r)
                    ),
                    child: MaterialButton(
                      child: Text(
                        "View Details",style: TextStyles.bodyMedium,
                      ),
                        onPressed: (){}),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}