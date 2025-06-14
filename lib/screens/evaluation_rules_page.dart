// lib/screens/evaluation_rules_page.dart

import 'package:flutter/material.dart';
import 'package:my_pdp/common/app_colors.dart';
import 'package:my_pdp/common/app_responsive.dart';
import 'package:my_pdp/data/evaluation_rules_data.dart'; // Import the data file

class EvaluationRulesPage extends StatelessWidget {
  const EvaluationRulesPage({super.key});

  // Helper widget for general bullet points
  Widget _buildBulletPoint(String text) {
    return Padding(
      padding: EdgeInsets.only(bottom: Responsive.height(0.005)),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Icon(Icons.check_circle_outline,
              size: Responsive.height(0.015), color: AppColors.green),
          SizedBox(width: Responsive.width(0.01)),
          Expanded(
            child: Text(
              text,
              style: TextStyle(
                  fontSize: Responsive.height(0.015), color: AppColors.black),
            ),
          ),
        ],
      ),
    );
  }

  // Helper for Section Titles
  Widget _buildSectionTitle(String title) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: Responsive.height(0.02)),
      child: Text(
        title,
        style: TextStyle(
          fontSize: Responsive.height(0.025),
          fontWeight: FontWeight.bold,
          color: AppColors.darkCyanGreen,
        ),
      ),
    );
  }

  // Helper for Subtopic Titles
  Widget _buildSubtopicTitle(String title) {
    return Padding(
      padding: EdgeInsets.only(
          top: Responsive.height(0.015), bottom: Responsive.height(0.005)),
      child: Text(
        title,
        style: TextStyle(
          fontSize: Responsive.height(0.018),
          fontWeight: FontWeight.w600,
          color: AppColors.darkCyanGreen,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      appBar: AppBar(
        title: Text(
          "Baholash Qoidalari",
          style: TextStyle(
            color: AppColors.white,
            fontWeight: FontWeight.bold,
            fontSize: Responsive.height(0.025),
          ),
        ),
        backgroundColor: AppColors.darkCyanGreen,
        iconTheme: IconThemeData(color: AppColors.white),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ...evaluationRulesSections.map((section) {
              return Padding(
                padding: EdgeInsets.only(bottom: Responsive.height(0.03)),
                child: Card(
                  elevation: 4,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15)),
                  color: AppColors.white,
                  child: Padding(
                    padding: EdgeInsets.all(Responsive.width(0.04)),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        _buildSectionTitle(section.title),
                        if (section.description != null)
                          Text(
                            section.description!,
                            style: TextStyle(
                                fontSize: Responsive.height(0.016),
                                color: AppColors.black),
                            textAlign: TextAlign.justify,
                          ),
                        if (section.mainPoints != null &&
                            section.mainPoints!.isNotEmpty)
                          SizedBox(height: Responsive.height(0.01)),
                        if (section.mainPoints != null)
                          ...section.mainPoints!
                              .map(_buildBulletPoint)
                              .toList(),
                        if (section.subtopics != null)
                          ...section.subtopics!
                              .map((subtopic) => Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      _buildSubtopicTitle(subtopic.title),
                                      ...subtopic.points
                                          .map(_buildBulletPoint)
                                          .toList(),
                                    ],
                                  ))
                              .toList(),
                      ],
                    ),
                  ),
                ),
              );
            }).toList(),
            SizedBox(height: Responsive.height(0.05)),
            // Extra space at the bottom
          ],
        ),
      ),
    );
  }
}
