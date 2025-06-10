// lib/widgets/about_uni/person_card.dart

import 'package:flutter/material.dart';
import 'package:my_pdp/common/app_responsive.dart';
import 'package:my_pdp/common/app_colors.dart';
import 'package:my_pdp/data/person_data.dart'; // Import the PersonInfo class

class PersonCard extends StatelessWidget {
  final PersonInfo person;

  const PersonCard({super.key, required this.person});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: AppColors.silver,
      elevation: 5,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      margin: EdgeInsets.symmetric(vertical: Responsive.height(0.02)),
      child: Padding(
        padding: EdgeInsets.all(Responsive.width(0.04)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: Responsive.height(0.08),
              backgroundImage: AssetImage(person.imagePath),
              backgroundColor: AppColors.silver,
              onBackgroundImageError: (exception, stackTrace) {
                debugPrint('Error loading image for ${person.name}: $exception');
              },
            ),
            SizedBox(height: Responsive.height(0.02)),
            Text(
              person.name,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: Responsive.height(0.025),
                fontWeight: FontWeight.bold,
                color: AppColors.darkCyanGreen,
              ),
            ),
            SizedBox(height: Responsive.height(0.005)),
            Text(
              person.title,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: Responsive.height(0.018),
                color: AppColors.green,
              ),
            ),
            SizedBox(height: Responsive.height(0.02)),
            Text(
              person.description,
              style: TextStyle(
                fontSize: Responsive.height(0.015),
                color: AppColors.black,
              ),
              textAlign: TextAlign.justify,
            ),
            if (person.bulletPoints.isNotEmpty)
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: Responsive.height(0.02)),
                  Text(
                    "PDP EcoSystem tarkibiga quyidagi tarmoqlari kiradi:",
                    style: TextStyle(
                      fontSize: Responsive.height(0.016),
                      fontWeight: FontWeight.w600,
                      color: AppColors.darkCyanGreen,
                    ),
                  ),
                  SizedBox(height: Responsive.height(0.01)),
                  ...person.bulletPoints.map((point) => Padding(
                    padding: EdgeInsets.only(bottom: Responsive.height(0.005)),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("•  ", style: TextStyle(color: AppColors.black, fontSize: Responsive.height(0.015))),
                        Expanded(
                          child: Text(
                            point,
                            style: TextStyle(fontSize: Responsive.height(0.015), color: AppColors.black),
                          ),
                        ),
                      ],
                    ),
                  )).toList(),
                ],
              ),
          ],
        ),
      ),
    );
  }
}
