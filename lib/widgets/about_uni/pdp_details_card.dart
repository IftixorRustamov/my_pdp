// lib/widgets/about_uni/pdp_details_card.dart

import 'package:flutter/material.dart';
import 'package:my_pdp/common/app_colors.dart';
import 'package:my_pdp/common/app_responsive.dart';
import 'package:my_pdp/screens/pdp_details_page.dart'; // Import the new details page

class PdpDetailsCard extends StatelessWidget {
  const PdpDetailsCard({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const PdpDetailsPage()),
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
                Icons.info_outline, // Information-related icon
                size: Responsive.height(0.05),
                color: AppColors.green,
              ),
              SizedBox(width: Responsive.width(0.04)),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "More About PDP",
                      style: TextStyle(
                        fontSize: Responsive.height(0.022),
                        fontWeight: FontWeight.bold,
                        color: AppColors.darkCyanGreen,
                      ),
                    ),
                    SizedBox(height: Responsive.height(0.005)),
                    Text(
                      "Discover details about the Unicorn Grant and key figures at PDP.",
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
