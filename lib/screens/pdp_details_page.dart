// lib/screens/pdp_details_page.dart

import 'package:flutter/material.dart';
import 'package:my_pdp/common/app_colors.dart';
import 'package:my_pdp/common/app_responsive.dart';

// Import data
import 'package:my_pdp/data/pdp_ecosystem_data.dart'; // For UnicornGrantData and unicornGrantData
import 'package:my_pdp/data/person_data.dart'; // For teamMembers

// Import widgets
import 'package:my_pdp/widgets/about_uni/unicorn_grant_section.dart';
import 'package:my_pdp/widgets/about_uni/person_card.dart';

class PdpDetailsPage extends StatelessWidget {
  const PdpDetailsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      appBar: AppBar(
        title: Text(
          "More About PDP",
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
            // Unicorn 3.0 Grant Section
            UnicornGrantSection(grantData: unicornGrantData),
            SizedBox(height: Responsive.height(0.05)),

            // Odilbek Mirzayev's & Jiemurat Mambetkarimov's Info
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding:
                    EdgeInsets.symmetric(horizontal: Responsive.width(0.01)),
                child: Text(
                  "Key Figures",
                  style: TextStyle(
                    fontSize: Responsive.height(0.028),
                    fontWeight: FontWeight.bold,
                    color: AppColors.darkCyanGreen,
                  ),
                ),
              ),
            ),
            SizedBox(height: Responsive.height(0.01)),
            ...teamMembers.map((person) => PersonCard(person: person)).toList(),
            SizedBox(height: Responsive.height(0.05)),
          ],
        ),
      ),
    );
  }
}
