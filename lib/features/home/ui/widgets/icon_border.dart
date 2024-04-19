import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

Widget iconBorder(
  Widget icon,
) {
    final _borderRadius = 1.5;

  return Container(
      decoration: BoxDecoration(
        borderRadius:  BorderRadius.all(Radius.circular(10.r)),
        border: Border(
          left: BorderSide(color: Colors.black, width: _borderRadius),
          right: BorderSide(color: Colors.black, width: _borderRadius),
          top: BorderSide(color: Colors.black, width: _borderRadius),
          bottom: BorderSide(color: Colors.black, width: _borderRadius),
        ),
      ),
      child: icon);
}
