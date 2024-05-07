import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:mentorship/core/theming/text_styles.dart';

showSnackBar(
    {required BuildContext context,
    required String text,
    required IconData icon}) {
  ScaffoldMessenger.of(context).showSnackBar(SnackBar(
      backgroundColor: Colors.white,
      content: Row(
        children: [
          Icon(
            icon,
            color: Colors.black,
          ),
          10.horizontalSpace,
          Text(
            text,
            style: TextStyles.bodyMedium.copyWith(color: Colors.black),
          ),
        ],
      )));
}

void showToast({
  required String text,
  required Color color,
}) =>
    Fluttertoast.showToast(
      msg: text,
      toastLength: Toast.LENGTH_LONG,
      gravity: ToastGravity.BOTTOM,
      timeInSecForIosWeb: 5,
      backgroundColor: color,
      textColor: Colors.white,
      fontSize: 16.0,
    );
