// lib/widgets/subjects/evaluation_principles_card.dart

import 'package:flutter/material.dart';
import 'package:my_pdp/common/app_colors.dart';
import 'package:my_pdp/common/app_responsive.dart';

import '../../screens/evaluation_principles_page.dart';

class EvaluationPrinciplesCard extends StatelessWidget {
  const EvaluationPrinciplesCard({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => const EvaluationPrinciplesPage()),
        );
      },
      child: Card(
        elevation: 6,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        margin: EdgeInsets.symmetric(vertical: Responsive.height(0.02)),
        color: AppColors.white,
        child: Padding(
          padding: EdgeInsets.all(Responsive.width(0.05)),
          child: Row(
            children: [
              Icon(
                Icons.assessment, // Icon for evaluation
                size: Responsive.height(0.05),
                color: AppColors.green,
              ),
              SizedBox(width: Responsive.width(0.04)),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Baholash Tamoyillari & Plagiat",
                      style: TextStyle(
                        fontSize: Responsive.height(0.022),
                        fontWeight: FontWeight.bold,
                        color: AppColors.darkCyanGreen,
                      ),
                    ),
                    SizedBox(height: Responsive.height(0.005)),
                    Text(
                      "Topshirish, qayta topshirish, qayta o'rganish va plagiat siyosati haqida ma'lumot.",
                      style: TextStyle(
                        fontSize: Responsive.height(0.016),
                        color: AppColors.grey,
                      ),
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ],
                ),
              ),
              Icon(
                Icons.arrow_forward_ios,
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
