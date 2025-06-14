import 'package:flutter/material.dart';
import 'package:my_pdp/common/app_colors.dart';
import 'package:my_pdp/common/app_responsive.dart';
import 'package:my_pdp/data/course_data.dart'; // Ensure Course and CourseUnit are defined here

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
            horizontal: Responsive.width(0.05),
            vertical: Responsive.height(0.015)),
        title: Text(
          course.name,
          style: TextStyle(
            fontWeight: FontWeight.w700,
            fontSize: Responsive.height(0.02),
            color: AppColors.darkCyanGreen,
          ),
        ),
        collapsedBackgroundColor: AppColors.white,
        backgroundColor: AppColors.white,
        collapsedShape:
        RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        iconColor: AppColors.green,
        collapsedIconColor: AppColors.green,
        children: [
          // Header for the units table with distinct background
          Container(
            padding: EdgeInsets.symmetric(
                horizontal: Responsive.width(0.03),
                vertical: Responsive.height(0.012)),
            decoration: BoxDecoration(
              color: AppColors.darkCyanGreen, // Dark background for header row
              borderRadius: BorderRadius.vertical(top: Radius.circular(0), bottom: Radius.circular(0)), // Adjust corners
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  flex: 3,
                  child: Text(
                    "Unit",
                    style: TextStyle(
                        fontSize: Responsive.height(0.017), // Slightly larger font
                        fontWeight: FontWeight.bold,
                        color: AppColors.white), // White text for header
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Text(
                    "I-semester",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: Responsive.height(0.017),
                        fontWeight: FontWeight.bold,
                        color: AppColors.white),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Text(
                    "II-semester",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: Responsive.height(0.017),
                        fontWeight: FontWeight.bold,
                        color: AppColors.white),
                  ),
                ),
              ],
            ),
          ),
          // No Divider needed directly after a colored container

          // List of units with alternating row colors
          ...course.units.asMap().entries.map((entry) {
            int idx = entry.key;
            var unit = entry.value;
            return Container(
              color: idx % 2 == 0 ? AppColors.white : AppColors.silver, // Alternating row colors
              padding: EdgeInsets.symmetric(
                  horizontal: Responsive.width(0.06),
                  vertical: Responsive.height(0.01)), // Consistent padding
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    flex: 3,
                    child: Text(
                      unit.unit,
                      style: TextStyle(
                        fontSize: Responsive.height(0.015),
                        color: AppColors.black,
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Text(
                      unit.iSemesterHours ?? "-", // Use a dash for null/empty
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: Responsive.height(0.015),
                        color: AppColors.green, // Green for semester hours
                        fontWeight: FontWeight.w600, // Make them stand out
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Text(
                      unit.iiSemesterHours ?? "-", // Use a dash for null/empty
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: Responsive.height(0.015),
                        color: AppColors.green, // Green for semester hours
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ],
              ),
            );
          }).toList(),
          SizedBox(height: Responsive.height(0.015)), // Space at the bottom of expansion
        ],
      ),
    );
  }
}
