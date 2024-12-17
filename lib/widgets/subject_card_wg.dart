import 'package:flutter/material.dart';
import 'package:my_pdp/common/app_colors.dart';
import 'package:my_pdp/common/app_responsive.dart';
import 'package:my_pdp/common/app_strings.dart';
import 'package:my_pdp/data/subject_data.dart';

class SubjectCardWg extends StatelessWidget {
  int index;

  SubjectCardWg({super.key, required this.index});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(5),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            
          ],
        ),
        borderRadius: BorderRadius.circular(10),
      ),
      width: Responsive.width(0.25),
      height: Responsive.height(0.13),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset("assets/images/image${index + 1}.png"),
          Text(
            cardNames[index],
            maxLines: 2,
            style: TextStyle(
              color: AppColors.black,
              fontWeight: FontWeight.w600,
              fontSize: Responsive.height(0.01),
            ),
          ),
          Row(
            children: [
              Icon(
                Icons.ios_share_outlined,
                size: 12,
              ),
              Text(
                AppStrings.info,
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: Responsive.height(0.01),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
