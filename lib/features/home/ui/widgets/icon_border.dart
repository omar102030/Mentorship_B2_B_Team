import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

Widget iconBorder(
  Widget icon,
) {
  const borderWidth = 2.0;

  return Container(
      padding: EdgeInsets.all(4.r),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(
          Radius.circular(10.r),
        ),
        shape: BoxShape.rectangle,
        border: const Border(
          left: BorderSide(
            color: Colors.black,
            width: borderWidth,
          ),
          right: BorderSide(color: Colors.black, width: borderWidth),
          top: BorderSide(color: Colors.black, width: borderWidth),
          bottom: BorderSide(color: Colors.black, width: borderWidth),
        ),
      ),
      child: icon);
}
