import 'dart:ui';

import 'package:flutter/cupertino.dart';

import '../common/app_colors.dart';
import '../common/app_responsive.dart';
import '../common/app_strings.dart';
import '../common/icon_paths.dart';

class SearchPartWg extends StatelessWidget {
  final String text;

  const SearchPartWg({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Row(
      spacing: 10,
      children: [
        Image.asset(IconPaths.search),
        Text(
          text,
          style: TextStyle(
              height: 2,
              color: AppColors.black,
              fontSize: Responsive.height(0.024),
              fontWeight: FontWeight.w700,
              fontFamily: "Inter"),
        ),
      ],
    );
  }
}
