// lib/widgets/about_uni/pdp_ecosystem_service_tile.dart

import 'package:flutter/material.dart';
import 'package:my_pdp/common/app_responsive.dart';
import 'package:my_pdp/common/app_colors.dart';
import 'package:my_pdp/data/pdp_ecosystem_data.dart'; // Import the new data file

class PdpEcosystemServiceTile extends StatelessWidget {
  final PdpEcosystemService service;

  const PdpEcosystemServiceTile({super.key, required this.service});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      margin: EdgeInsets.symmetric(
          vertical: Responsive.height(0.008),
          horizontal: Responsive.width(0.01)),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: ExpansionTile(
        title: Text(
          service.name,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: Responsive.height(0.02),
            color: AppColors.darkCyanGreen,
          ),
        ),
        collapsedBackgroundColor: AppColors.white,
        backgroundColor: AppColors.white,
        iconColor: AppColors.green,
        collapsedIconColor: AppColors.green,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(
                horizontal: Responsive.width(0.04),
                vertical: Responsive.height(0.01)),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  service.description,
                  style: TextStyle(
                      fontSize: Responsive.height(0.016),
                      color: AppColors.black),
                  textAlign: TextAlign.justify,
                ),
                if (service.bulletPoints.isNotEmpty)
                  SizedBox(height: Responsive.height(0.01)),
                ...service.bulletPoints
                    .map((point) => Padding(
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
                                  point,
                                  style: TextStyle(
                                      fontSize: Responsive.height(0.015),
                                      color: AppColors.black),
                                ),
                              ),
                            ],
                          ),
                        ))
                    .toList(),
                SizedBox(height: Responsive.height(0.01)),
                Text(
                  service.achievement,
                  style: TextStyle(
                    fontSize: Responsive.height(0.016),
                    fontWeight: FontWeight.w600,
                    color: AppColors.green,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: Responsive.height(0.01)),
        ],
      ),
    );
  }
}
