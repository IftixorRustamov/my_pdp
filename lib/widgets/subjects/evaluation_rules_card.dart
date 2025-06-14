// lib/widgets/subjects/evaluation_rules_card.dart

import 'package:flutter/material.dart';
import 'package:my_pdp/common/app_colors.dart';
import 'package:my_pdp/common/app_responsive.dart';
import 'package:my_pdp/screens/evaluation_rules_page.dart'; // Import the new evaluation rules page

class EvaluationRulesCard extends StatelessWidget {
  const EvaluationRulesCard({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const EvaluationRulesPage()),
        );
      },
      child: Card(
        elevation: 6,
        // Slightly higher elevation
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        margin: EdgeInsets.symmetric(vertical: Responsive.height(0.02)),
        color: AppColors.white,
        // White background for the card
        child: Padding(
          padding: EdgeInsets.all(Responsive.width(0.05)), // Increased padding
          child: Row(
            children: [
              Icon(
                Icons.rule, // Rule-related icon
                size: Responsive.height(0.05),
                color: AppColors.green, // Green color for the icon
              ),
              SizedBox(width: Responsive.width(0.04)),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Baholash Qoidalari",
                      style: TextStyle(
                        fontSize: Responsive.height(0.022),
                        fontWeight: FontWeight.bold,
                        color: AppColors.darkCyanGreen, // Dark text for title
                      ),
                    ),
                    SizedBox(height: Responsive.height(0.005)),
                    Text(
                      "Ichki baholash prinsiplari, topshiriqlar, mezonlar va plagiat siyosati haqida.",
                      style: TextStyle(
                        fontSize: Responsive.height(0.016),
                        color: AppColors.grey, // Grey for description
                      ),
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ],
                ),
              ),
              Icon(
                Icons.arrow_forward_ios, // Forward arrow icon
                size: Responsive.height(0.025),
                color: AppColors.grey,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
