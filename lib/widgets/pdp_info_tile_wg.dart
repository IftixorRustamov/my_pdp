import 'package:flutter/material.dart';

import '../common/app_colors.dart';
import '../common/app_responsive.dart';

class PDPInfoTile extends StatelessWidget {
  final String title;
  final String subtitle;

  const PDPInfoTile({super.key, required this.title, required this.subtitle});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      spacing: 10,
      children: [
        Text(
          title,
          style: TextStyle(
            color: AppColors.green, // Green text color
            fontSize: Responsive.height(0.024),
            fontWeight: FontWeight.w700,
          ),
        ),
        SizedBox(
          width: Responsive.width(0.33),
          child: Text(
            subtitle,
            maxLines: 2,
            textAlign: TextAlign.center,
            style: TextStyle(
              color: AppColors.white,
              fontSize: Responsive.height(0.015),
            ),
          ),
        ),
      ],
    );
  }
}
