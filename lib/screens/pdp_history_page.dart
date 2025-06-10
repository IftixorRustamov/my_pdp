// lib/screens/pdp_history_page.dart

import 'package:flutter/material.dart';
import 'package:my_pdp/common/app_colors.dart';
import 'package:my_pdp/common/app_responsive.dart';
import 'package:my_pdp/data/pdp_history_data.dart'; // Import the history data

class PdpHistoryPage extends StatelessWidget {
  const PdpHistoryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      appBar: AppBar(
        title: Text(
          "PDP University History",
          style: TextStyle(
            color: AppColors.white,
            fontWeight: FontWeight.bold,
            fontSize: Responsive.height(0.025),
          ),
        ),
        backgroundColor: AppColors.darkCyanGreen, // Matching app bar color
        iconTheme: IconThemeData(color: AppColors.white), // White back icon
      ),
      body: ListView.builder(
        padding: EdgeInsets.all(Responsive.width(0.04)), // Padding for the list
        itemCount: pdpHistoryEvents.length,
        itemBuilder: (context, index) {
          final event = pdpHistoryEvents[index];
          return Card(
            color: AppColors.silver,
            elevation: 4,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
            margin: EdgeInsets.symmetric(vertical: Responsive.height(0.01)),
            child: Padding(
              padding: EdgeInsets.all(Responsive.width(0.04)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "${event.year}",
                    style: TextStyle(
                      fontSize: Responsive.height(0.025),
                      fontWeight: FontWeight.bold,
                      color: AppColors.green, // Highlight year with green
                    ),
                  ),
                  SizedBox(height: Responsive.height(0.01)),
                  Text(
                    event.title,
                    style: TextStyle(
                      fontSize: Responsive.height(0.02),
                      fontWeight: FontWeight.w600,
                      color: AppColors.darkCyanGreen, // Dark text for title
                    ),
                  ),
                  SizedBox(height: Responsive.height(0.01)),
                  Text(
                    event.description,
                    style: TextStyle(
                      fontSize: Responsive.height(0.016),
                      color: AppColors.black, // Black text for description
                    ),
                    textAlign: TextAlign.justify,
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
