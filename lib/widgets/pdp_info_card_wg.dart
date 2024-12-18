<<<<<<< HEAD
import 'package:flutter/material.dart';
import 'package:my_pdp/common/app_responsive.dart';
import 'package:my_pdp/common/app_strings.dart';
import 'package:my_pdp/widgets/pdp_info_tile_wg.dart';

import '../common/app_colors.dart';

class PDPInfoCard extends StatelessWidget {
  const PDPInfoCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.all(
        Responsive.width(0.055),
      ),
      decoration: BoxDecoration(
        color: AppColors.darkCyanGreen,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Column(
        spacing: 15,
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          // Title
          Text(
            AppStrings.info,
            style: TextStyle(
                color: AppColors.white,
                fontSize: Responsive.height(0.024),
                fontWeight: FontWeight.w600,
                fontFamily: "Inter"),
          ),
          // Subtitle
          Text(
            AppStrings.info,
            textAlign: TextAlign.center,
            style: TextStyle(
                color: AppColors.white,
                fontSize: Responsive.height(0.015),
                fontWeight: FontWeight.w400),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              PDPInfoTile(
                title: AppStrings.info,
                subtitle: AppStrings.info,
              ),
              PDPInfoTile(
                title: AppStrings.info,
                subtitle: AppStrings.aboutUniversity,
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              PDPInfoTile(
                title: AppStrings. aboutUniversity,
                subtitle: AppStrings.aboutUniversity,
              ),
              PDPInfoTile(
                title: AppStrings.eventsAndHolidays,
                subtitle: AppStrings.eventsAndHolidays,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
=======
import 'package:flutter/material.dart';
import 'package:my_pdp/common/app_responsive.dart';
import 'package:my_pdp/common/app_strings.dart';
import 'package:my_pdp/widgets/pdp_info_tile_wg.dart';

import '../common/app_colors.dart';

class PDPInfoCard extends StatelessWidget {
  const PDPInfoCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.all(
        Responsive.width(0.055),
      ),
      decoration: BoxDecoration(
        color: AppColors.darkCyanGreen,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Column(
        spacing: 15,
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          // Title
          Text(
            AppStrings.info,
            style: TextStyle(
                color: AppColors.white,
                fontSize: Responsive.height(0.024),
                fontWeight: FontWeight.w600,
                fontFamily: "Inter"),
          ),
          // Subtitle
          Text(
            AppStrings.pdpCardInfo,

            textAlign: TextAlign.center,
            style: TextStyle(
                color: AppColors.white,
                fontSize: Responsive.height(0.015),
                fontWeight: FontWeight.w400),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              PDPInfoTile(
                title: AppStrings.fiveYears,
                subtitle: AppStrings.fiveYearsSub,
              ),
              PDPInfoTile(
                title: AppStrings.ninetyPercent,
                subtitle: AppStrings.ninetyPercentSub,
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              PDPInfoTile(
                title: AppStrings.twoHundredPlus,
                subtitle: AppStrings.twoHundredPlusSub,
              ),
              PDPInfoTile(
                title: AppStrings.twoThousandPlus,
                subtitle: AppStrings.twoThousandPlusSub,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
>>>>>>> main
