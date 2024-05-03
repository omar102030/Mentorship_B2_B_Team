import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mentorship/core/theming/text_styles.dart';

class DefaultSearchBar extends StatelessWidget {
  const DefaultSearchBar({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40.h,
      child: TextField(
        cursorColor: Colors.white,
        style: const TextStyle(
          color: Colors.white,
        ),
        decoration: InputDecoration(
          label: Text("Search", style: TextStyles.bodyMedium),
          focusedBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: Colors.white, width: 1.0),
            borderRadius: BorderRadius.circular(12),
          ),
          enabled: true,
          enabledBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: Colors.white, width: 1.0),
            borderRadius: BorderRadius.circular(12),
          ),
          contentPadding: const EdgeInsets.only(left: 16),
          suffixIconColor: Colors.white,
          suffixIcon: const Icon(Icons.search),
        ),
      ),
    );
  }
}
