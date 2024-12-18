import 'package:flutter/material.dart';
import 'package:my_pdp/common/app_responsive.dart';
import 'package:my_pdp/common/app_strings.dart';
import 'package:my_pdp/widgets/header_part_wg.dart';
import 'package:my_pdp/widgets/search_part_wg.dart';
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
                SearchPartWg(text: AppStrings.subjects),
                Expanded(
                  child: SizedBox(
                    height: Responsive.height(0.6),
                    child: GridView.builder(
                      itemCount: 9,
                      gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                        maxCrossAxisExtent: Responsive.width(0.41),
                        childAspectRatio: 0.82/1,
                        mainAxisSpacing: Responsive.height(0.015),
                        crossAxisSpacing: Responsive.width(0.025),
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
