// lib/widgets/about_uni/unicorn_grant_section.dart

import 'package:flutter/material.dart';
import 'package:my_pdp/common/app_responsive.dart';
import 'package:my_pdp/common/app_colors.dart';
import 'package:my_pdp/data/pdp_ecosystem_data.dart'; // Import the new data file

class UnicornGrantSection extends StatelessWidget {
  final UnicornGrantData grantData;

  const UnicornGrantSection({super.key, required this.grantData});

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
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Align(
              alignment: Alignment.center,
              child: Text(
                "Unicorn 3.0 Granti",
                style: TextStyle(
                  fontSize: Responsive.height(0.028),
                  fontWeight: FontWeight.bold,
                  color: AppColors.darkCyanGreen,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(height: Responsive.height(0.02)),
            Text(
              grantData.purpose,
              style: TextStyle(
                  fontSize: Responsive.height(0.016), color: AppColors.black),
              textAlign: TextAlign.justify,
            ),
            SizedBox(height: Responsive.height(0.025)),
            Text(
              "Maqsadli Grantlar Miqdori:",
              style: TextStyle(
                fontSize: Responsive.height(0.018),
                fontWeight: FontWeight.bold,
                color: AppColors.darkCyanGreen,
              ),
            ),
            SizedBox(height: Responsive.height(0.01)),
            Wrap(
              spacing: Responsive.width(0.03),
              runSpacing: Responsive.height(0.01),
              children: grantData.financialAmounts.entries.map((entry) {
                return Chip(
                  label: Text(
                    "${entry.key}: ${entry.value}",
                    style: TextStyle(
                        color: AppColors.white,
                        fontSize: Responsive.height(0.015)),
                  ),
                  backgroundColor: AppColors.green,
                );
              }).toList(),
            ),
            SizedBox(height: Responsive.height(0.025)),
            Text(
              "Grantning tarkibi:",
              style: TextStyle(
                fontSize: Responsive.height(0.018),
                fontWeight: FontWeight.bold,
                color: AppColors.darkCyanGreen,
              ),
            ),
            SizedBox(height: Responsive.height(0.01)),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: grantData.benefits
                  .map((benefit) => Padding(
                        padding:
                            EdgeInsets.only(bottom: Responsive.height(0.005)),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("•  ",
                                style: TextStyle(
                                    color: AppColors.black,
                                    fontSize: Responsive.height(0.015))),
                            Expanded(
                              child: Text(
                                benefit,
                                style: TextStyle(
                                    fontSize: Responsive.height(0.015),
                                    color: AppColors.black),
                              ),
                            ),
                          ],
                        ),
                      ))
                  .toList(),
            ),
            SizedBox(height: Responsive.height(0.025)),
            Text(
              "Grantning Statistikasi:",
              style: TextStyle(
                fontSize: Responsive.height(0.018),
                fontWeight: FontWeight.bold,
                color: AppColors.darkCyanGreen,
              ),
            ),
            SizedBox(height: Responsive.height(0.01)),
            Column(
              children: grantData.statistics.entries
                  .map((entry) => Padding(
                        padding:
                            EdgeInsets.only(bottom: Responsive.height(0.005)),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "${entry.key}:",
                              style: TextStyle(
                                fontSize: Responsive.height(0.016),
                                fontWeight: FontWeight.w500,
                                color: AppColors.black,
                              ),
                            ),
                            Expanded(
                              child: Text(
                                entry.value,
                                textAlign: TextAlign.right,
                                style: TextStyle(
                                    fontSize: Responsive.height(0.016),
                                    color: AppColors.black),
                              ),
                            ),
                          ],
                        ),
                      ))
                  .toList(),
            ),
            SizedBox(height: Responsive.height(0.025)),
            Text(
              "Spansorlar:",
              style: TextStyle(
                fontSize: Responsive.height(0.018),
                fontWeight: FontWeight.bold,
                color: AppColors.darkCyanGreen,
              ),
            ),
            SizedBox(height: Responsive.height(0.01)),
            Wrap(
              spacing: Responsive.width(0.02),
              runSpacing: Responsive.height(0.005),
              children: grantData.sponsors
                  .map((sponsor) => Chip(
                        label: Text(sponsor,
                            style: TextStyle(
                                color: AppColors.black,
                                fontSize: Responsive.height(0.014))),
                        backgroundColor: AppColors.silver,
                      ))
                  .toList(),
            ),
          ],
        ),
      ),
    );
  }
}
