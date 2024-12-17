import 'package:flutter/material.dart';
import 'package:my_pdp/common/app_colors.dart';
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
            children: [
              Image.asset(IconPaths.search),
              Text(
                AppStrings.subjects,
                style: TextStyle(
                    color: AppColors.black,
                    fontSize: 24,
                    fontWeight: FontWeight.w700,
                    fontFamily: "Inter"),
              ),
            ],
          ),
          Expanded(
            child: GridView.builder(
              itemCount: 9,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
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
