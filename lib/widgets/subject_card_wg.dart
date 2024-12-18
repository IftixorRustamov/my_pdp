import 'package:flutter/material.dart';
import 'package:my_pdp/common/app_colors.dart';
import 'package:my_pdp/common/app_responsive.dart';
import 'package:my_pdp/common/app_strings.dart';
import 'package:my_pdp/common/colors/app_gradient_colors.dart';
import 'package:my_pdp/data/subject_data.dart';

class SubjectCardWg extends StatelessWidget {
  int index;

  SubjectCardWg({super.key, required this.index});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: Responsive.width(0.01),
        vertical: Responsive.height(0.012),
      ),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            AppGradientColors.startingColors[
                index % AppGradientColors.startingColors.length],
            AppGradientColors
                .endingColors[index % AppGradientColors.endingColors.length],
          ],
        ),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Align(
            alignment: Alignment.center,
            child: Image.asset(
              "assets/images/image${index + 1}.png",
            ),
          ),
          Text(
            cardNames[index],
            maxLines: 3,
            style: TextStyle(
              color: AppColors.white,
              fontWeight: FontWeight.w600,
              fontSize: Responsive.height(0.012),
            ),
          ),
          Row(
            spacing: 5,
            children: [
              Icon(
                Icons.ios_share_outlined,
                size: Responsive.width(0.033),
                color: AppColors.white,
              ),
              Text(
                AppStrings.info,
                style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: Responsive.height(0.011),
                    color: AppColors.white),
              ),
            ],
          )
        ],
      ),
    );
  }
}
