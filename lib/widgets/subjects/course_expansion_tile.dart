import 'package:flutter/material.dart';
import 'package:my_pdp/common/app_colors.dart';
import 'package:my_pdp/common/app_responsive.dart';

import '../../data/course_data.dart';

class CourseExpansionTile extends StatelessWidget {
  final Course course;

  const CourseExpansionTile({super.key, required this.course});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.symmetric(
          vertical: Responsive.height(0.008),
          horizontal: Responsive.width(0.02)),
      elevation: 6,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      color: AppColors.white,
      child: ExpansionTile(
        tilePadding: EdgeInsets.symmetric(
            horizontal: Responsive.width(0.05), // Increased padding for title
            vertical: Responsive.height(0.015)),
        // Increased vertical padding for title
        title: Text(
          course.name,
          style: TextStyle(
            fontWeight: FontWeight.w700,
            // Make title bolder
            fontSize: Responsive.height(0.02),
            // Slightly larger font size for title
            color: AppColors
                .darkCyanGreen, // Using darkCyanGreen for primary title color
          ),
        ),
        collapsedBackgroundColor: AppColors.white,
        // Background when collapsed
        backgroundColor: AppColors.white,
        // Background when expanded
        collapsedShape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        iconColor: AppColors.green,
        // Green arrow icon
        collapsedIconColor: AppColors.green,
        // Green arrow icon when collapsed
        children: [
          // Header for the units table
          Padding(
            padding: EdgeInsets.symmetric(
                horizontal: Responsive.width(0.06), // Adjusted padding
                vertical: Responsive.height(0.01)), // Adjusted padding
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  flex: 3,
                  child: Text(
                    "Unit",
                    style: TextStyle(
                        fontSize: Responsive.height(0.016),
                        fontWeight: FontWeight.bold,
                        color: AppColors.darkCyanGreen),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Text(
                    "I-semester",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: Responsive.height(0.016),
                        fontWeight: FontWeight.bold,
                        color: AppColors.darkCyanGreen),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Text(
                    "II-semester",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: Responsive.height(0.016),
                        fontWeight: FontWeight.bold,
                        color: AppColors.darkCyanGreen),
                  ),
                ),
              ],
            ),
          ),
          Divider(height: 1, color: AppColors.silver),
          // Lighter divider color

          ...course.units.map((unit) {
            return Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: Responsive.width(0.06), // Adjusted padding
                  vertical: Responsive.height(0.008)), // Adjusted padding
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    flex: 3,
                    child: Text(
                      unit.unit,
                      style: TextStyle(
                        fontSize: Responsive.height(0.015),
                        color: AppColors.black, // Ensure text is readable
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Text(
                      unit.iSemesterHours ?? "",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: Responsive.height(0.015),
                        color: AppColors.black,
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Text(
                      unit.iiSemesterHours ?? "",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: Responsive.height(0.015),
                        color: AppColors.black,
                      ),
                    ),
                  ),
                ],
              ),
            );
          }).toList(),
          SizedBox(height: Responsive.height(0.015)),
          // Add space at the bottom of expansion
        ],
      ),
    );
  }
}
