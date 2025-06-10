import 'package:flutter/cupertino.dart';
import 'package:my_pdp/common/app_strings.dart';

import '../common/app_colors.dart';
import '../common/app_responsive.dart';

class HeaderPartWg extends StatelessWidget {
  String headerInfo;

  HeaderPartWg({super.key, required this.headerInfo});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: Responsive.height(0.13),
      decoration: BoxDecoration(color: AppColors.darkCyanGreen),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Text(
            AppStrings.btec,
            style: TextStyle(
                color: AppColors.white, fontSize: Responsive.height(0.023)),
          ),
          SizedBox(
            height: Responsive.height(0.013),
          ),
          Text(
            headerInfo,
            style: TextStyle(
                color: AppColors.white, fontSize: Responsive.height(0.03)),
          ),
          SizedBox(
            height: Responsive.height(0.021),
          ),
        ],
      ),
    );
  }
}
