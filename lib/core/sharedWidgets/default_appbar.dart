import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DefaultAppBar extends StatelessWidget implements PreferredSizeWidget {
  const DefaultAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      titleSpacing: 24,
      title: Image.asset(
        "assets/images/app_logo.png",
        width: 150.sp,
      ),
      actions: [
        const Icon(
          Icons.notifications,
          size: 30,
        ),
        SizedBox(
          width: 12.sp,
        ),
        const Icon(
          Icons.account_circle_rounded,
          size: 30,
        ),
        SizedBox(
          width: 24.sp,
        ),
      ],
      bottom: PreferredSize(
        preferredSize: const Size.fromHeight(1.0),
        child: Container(
          color: Colors.white,
          height: 1,
        ),
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

}
