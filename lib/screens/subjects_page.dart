<<<<<<< HEAD
import 'package:flutter/material.dart';
import 'package:my_pdp/common/app_colors.dart';
import 'package:my_pdp/common/app_responsive.dart';
import 'package:my_pdp/common/app_strings.dart';
import 'package:my_pdp/common/icon_paths.dart';
import 'package:my_pdp/widgets/subject_card_wg.dart';

class SubjectsPage extends StatelessWidget {
  const SubjectsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(13),
      child: Column(
        children: [
          Row(
            spacing: 10,
            children: [
              Image.asset(IconPaths.search),
              Text(
                AppStrings.subjects,
                style: TextStyle(
                    height: 2,
                    color: AppColors.black,
                    fontSize: Responsive.height(0.024),
                    fontWeight: FontWeight.w700,
                    fontFamily: "Inter"),
              ),
            ],
          ),
          Expanded(
            child: GridView.builder(
              itemCount: 9,
              gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                maxCrossAxisExtent: Responsive.width(0.31),
                mainAxisSpacing: Responsive.height(0.015),
                crossAxisSpacing: Responsive.width(0.033),
              ),
              itemBuilder: (BuildContext context, int index) => SubjectCardWg(
                index: index,
              ),
            ),
          )
        ],
      ),
    );
  }
}
=======
import 'package:flutter/material.dart';
import 'package:my_pdp/common/app_colors.dart';
import 'package:my_pdp/common/app_responsive.dart';
import 'package:my_pdp/common/app_strings.dart';
import 'package:my_pdp/common/icon_paths.dart';
import 'package:my_pdp/widgets/header_part_wg.dart';
import 'package:my_pdp/widgets/subject_card_wg.dart';

class SubjectsPage extends StatelessWidget {
  const SubjectsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        HeaderPartWg(headerInfo: AppStrings.pdpModules),
        SizedBox(
          height: Responsive.height(0.6),
          child: Padding(
            padding: EdgeInsets.all(13),
            child: Column(
              children: [
                Row(
                  spacing: 10,
                  children: [
                    Image.asset(IconPaths.search),
                    Text(
                      AppStrings.subjects,
                      style: TextStyle(
                          height: 2,
                          color: AppColors.black,
                          fontSize: Responsive.height(0.024),
                          fontWeight: FontWeight.w700,
                          fontFamily: "Inter"),
                    ),
                  ],
                ),
                Expanded(
                  child: SizedBox(
                    height: Responsive.height(0.6),
                    child: GridView.builder(
                      itemCount: 9,
                      gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                        maxCrossAxisExtent: Responsive.width(0.31),
                        mainAxisSpacing: Responsive.height(0.015),
                        crossAxisSpacing: Responsive.width(0.033),
                      ),
                      itemBuilder: (BuildContext context, int index) =>
                          SubjectCardWg(
                        index: index,
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        )
      ],
    );
  }
}
>>>>>>> main
