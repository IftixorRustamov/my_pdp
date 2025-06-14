// lib/widgets/subjects/view_courses_card.dart

import 'package:flutter/material.dart';
import 'package:my_pdp/common/app_colors.dart';
import 'package:my_pdp/common/app_responsive.dart';
import 'package:my_pdp/screens/course_list_page.dart'; // Import the new CourseListPage

class ViewCoursesCard extends StatelessWidget {
  const ViewCoursesCard({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const CourseListPage()),
        );
      },
      child: Card(
        elevation: 6,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        margin: EdgeInsets.symmetric(vertical: Responsive.height(0.03)),
        // Adjusted margin
        color: AppColors.darkCyanGreen,
        // Dark background for the card
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: Responsive.width(0.05),
            vertical: Responsive.height(0.025),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Explore All Courses",
                    style: TextStyle(
                      fontSize: Responsive.height(0.022),
                      fontWeight: FontWeight.bold,
                      color: AppColors.white, // White text
                    ),
                  ),
                  SizedBox(height: Responsive.height(0.005)),
                  Text(
                    "View detailed curriculum for all PDP courses.",
                    style: TextStyle(
                      fontSize: Responsive.height(0.016),
                      color: AppColors.silver, // Lighter text
                    ),
                  ),
                ],
              ),
              Icon(
                Icons.arrow_forward_ios,
                size: Responsive.height(0.025),
                color: AppColors.white, // White arrow
              ),
            ],
          ),
        ),
      ),
    );
  }
}
