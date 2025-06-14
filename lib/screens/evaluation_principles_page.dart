// lib/screens/evaluation_principles_page.dart

import 'package:flutter/material.dart';
import 'package:my_pdp/common/app_colors.dart';
import 'package:my_pdp/common/app_responsive.dart';
import 'package:my_pdp/data/evaluation_principles_data.dart'; // Import the new data file

class EvaluationPrinciplesPage extends StatelessWidget {
  const EvaluationPrinciplesPage({super.key});

  // Helper widget for bullet points
  Widget _buildBulletPoint(String text) {
    return Padding(
      padding: EdgeInsets.only(bottom: Responsive.height(0.005)),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Icon(Icons.check_circle_outline, size: Responsive.height(0.015), color: AppColors.green), // Green checkmark
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      appBar: AppBar(
        title: Text(
          "Baholash Tamoyillari",
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
            _buildSectionTitle("Baholash Jarayonlari"),
            ListView.builder(
              shrinkWrap: true,
              primary: false,
              itemCount: evaluatingPrinciples.length,
              itemBuilder: (context, index) {
                final principle = evaluatingPrinciples[index];
                IconData leadingIcon;
                // Assign different icons based on index/type for creativity
                switch (index) {
                  case 0:
                    leadingIcon = Icons.upload_file; // Submission
                    break;
                  case 1:
                    leadingIcon = Icons.repeat; // Resubmission
                    break;
                  case 2:
                    leadingIcon = Icons.refresh; // Retake
                    break;
                  case 3:
                    leadingIcon = Icons.restart_alt; // Remodule
                    break;
                  default:
                    leadingIcon = Icons.info_outline;
                }

                return Card(
                  elevation: 6, // Increased elevation
                  margin: EdgeInsets.symmetric(vertical: Responsive.height(0.012)), // Increased margin
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)), // More rounded corners
                  color: AppColors.white, // Ensure card background is white
                  child: ExpansionTile(
                    tilePadding: EdgeInsets.symmetric(horizontal: Responsive.width(0.05), vertical: Responsive.height(0.015)),
                    leading: Icon(leadingIcon, color: AppColors.darkCyanGreen, size: Responsive.height(0.03)), // Icon next to title
                    title: Text(
                      principle.title,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: Responsive.height(0.02),
                        color: AppColors.darkCyanGreen, // Dark color for main title
                      ),
                    ),
                    collapsedBackgroundColor: AppColors.white,
                    backgroundColor: AppColors.white,
                    collapsedShape:
                    RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
                    iconColor: AppColors.green, // Green arrow icon
                    collapsedIconColor: AppColors.green,
                    children: [
                      Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal: Responsive.width(0.06), // Increased padding for content
                            vertical: Responsive.height(0.01)),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              principle.description,
                              style: TextStyle(
                                  fontSize: Responsive.height(0.016),
                                  color: AppColors.black),
                              textAlign: TextAlign.justify,
                            ),
                            if (principle.requirements.isNotEmpty) ...[
                              SizedBox(height: Responsive.height(0.015)),
                              Text(
                                "Talablar:",
                                style: TextStyle(
                                  fontSize: Responsive.height(0.017),
                                  fontWeight: FontWeight.w600,
                                  color: AppColors.darkCyanGreen,
                                ),
                              ),
                              ...principle.requirements
                                  .map(_buildBulletPoint)
                                  .toList(),
                            ],
                            if (principle.conditions.isNotEmpty) ...[
                              SizedBox(height: Responsive.height(0.015)),
                              Text(
                                "Shartlar:",
                                style: TextStyle(
                                  fontSize: Responsive.height(0.017),
                                  fontWeight: FontWeight.w600,
                                  color: AppColors.darkCyanGreen,
                                ),
                              ),
                              ...principle.conditions
                                  .map(_buildBulletPoint)
                                  .toList(),
                            ],
                            if (principle.duration != null &&
                                principle.duration!.isNotEmpty) ...[
                              SizedBox(height: Responsive.height(0.015)),
                              Text(
                                "Davomiyligi:",
                                style: TextStyle(
                                  fontSize: Responsive.height(0.017),
                                  fontWeight: FontWeight.w600,
                                  color: AppColors.darkCyanGreen,
                                ),
                              ),
                              Text(
                                principle.duration!,
                                style: TextStyle(
                                    fontSize: Responsive.height(0.015),
                                    color: AppColors.black),
                                textAlign: TextAlign.justify,
                              ),
                            ],
                            SizedBox(height: Responsive.height(0.01)), // Space at bottom of expanded section
                          ],
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
            SizedBox(height: Responsive.height(0.03)),

            _buildSectionTitle("Jarayon Jadvali"),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: DataTable(
                columnSpacing: Responsive.width(0.05),
                dataRowHeight: Responsive.height(0.07),
                headingRowColor: MaterialStateProperty.all(AppColors.darkCyanGreen),
                headingTextStyle: TextStyle(
                  color: AppColors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: Responsive.height(0.016),
                ),
                columns: processTableData[0]
                    .map((header) => DataColumn(label: Text(header)))
                    .toList(),
                rows: processTableData.skip(1).map((row) {
                  return DataRow(
                    color: MaterialStateProperty.resolveWith<Color?>(
                            (Set<MaterialState> states) {
                          final rowIndex = processTableData.indexOf(row);
                          if (rowIndex == 1) return AppColors.green.withOpacity(0.1); // Light green for Submission row
                          if (rowIndex % 2 == 0) { // Even data rows (original index 2, 4)
                            return AppColors.lightGrey.withOpacity(0.2);
                          }
                          return AppColors.white; // Odd data rows (original index 3, 5)
                        }),
                    cells: row
                        .map((cell) => DataCell(
                      Text(
                        cell,
                        style: TextStyle(
                          fontSize: Responsive.height(0.015),
                          color: AppColors.black,
                        ),
                      ),
                    ))
                        .toList(),
                  );
                }).toList(),
              ),
            ),
            SizedBox(height: Responsive.height(0.03)),

            _buildSectionTitle("2.8 Plagiarism (Plagiat)"),
            Card( // Wrap plagiarism section in a card
              elevation: 4,
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
              margin: EdgeInsets.only(bottom: Responsive.height(0.02)),
              color: AppColors.white,
              child: Padding(
                padding: EdgeInsets.all(Responsive.width(0.04)),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      plagiarismInfo.plagiarismDefinition,
                      style: TextStyle(
                          fontSize: Responsive.height(0.016), color: AppColors.black),
                      textAlign: TextAlign.justify,
                    ),
                    SizedBox(height: Responsive.height(0.02)),
                    Text(
                      "Plagiatning turlari:",
                      style: TextStyle(
                        fontSize: Responsive.height(0.018),
                        fontWeight: FontWeight.bold,
                        color: AppColors.darkCyanGreen,
                      ),
                    ),
                    ...plagiarismInfo.typesOfPlagiarism.map(_buildBulletPoint).toList(),
                    SizedBox(height: Responsive.height(0.02)),
                    Text(
                      "Plagiatning ta’siri:",
                      style: TextStyle(
                        fontSize: Responsive.height(0.018),
                        fontWeight: FontWeight.bold,
                        color: AppColors.darkCyanGreen,
                      ),
                    ),
                    ...plagiarismInfo.impactOfPlagiarism
                        .map(_buildBulletPoint)
                        .toList(),
                  ],
                ),
              ),
            ),
            SizedBox(height: Responsive.height(0.03)), // Space after plagiarism card

            _buildSectionTitle(
                "2.8.1 Anti-Plagiarism (Plagiatning oldini olish)"),
            Card( // Wrap anti-plagiarism section in a card
              elevation: 4,
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
              margin: EdgeInsets.only(bottom: Responsive.height(0.02)),
              color: AppColors.white,
              child: Padding(
                padding: EdgeInsets.all(Responsive.width(0.04)),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      plagiarismInfo.antiPlagiarismPolicy,
                      style: TextStyle(
                          fontSize: Responsive.height(0.016), color: AppColors.black),
                      textAlign: TextAlign.justify,
                    ),
                    SizedBox(height: Responsive.height(0.02)),
                    Text(
                      "Anti-plagiat siyosatining asosiy komponentlari:",
                      style: TextStyle(
                        fontSize: Responsive.height(0.018),
                        fontWeight: FontWeight.bold,
                        color: AppColors.darkCyanGreen,
                      ),
                    ),
                    ...plagiarismInfo.antiPlagiarismComponents
                        .map(_buildBulletPoint)
                        .toList(),
                    SizedBox(height: Responsive.height(0.02)),
                    Text(
                      "Plagiatni aniqlash vositalari:",
                      style: TextStyle(
                        fontSize: Responsive.height(0.018),
                        fontWeight: FontWeight.bold,
                        color: AppColors.darkCyanGreen,
                      ),
                    ),
                    ...plagiarismInfo.detectionTools.map(_buildBulletPoint).toList(),
                    SizedBox(height: Responsive.height(0.02)),
                    Text(
                      "Qoidabuzarlikka qarshi choralari:",
                      style: TextStyle(
                        fontSize: Responsive.height(0.018),
                        fontWeight: FontWeight.bold,
                        color: AppColors.darkCyanGreen,
                      ),
                    ),
                    ...plagiarismInfo.violationMeasures.map(_buildBulletPoint).toList(),
                    SizedBox(height: Responsive.height(0.02)),
                    Text(
                      "Anti-plagiat siyosatining ahamiyati:",
                      style: TextStyle(
                        fontSize: Responsive.height(0.018),
                        fontWeight: FontWeight.bold,
                        color: AppColors.darkCyanGreen,
                      ),
                    ),
                    ...plagiarismInfo.importanceOfPolicy
                        .map(_buildBulletPoint)
                        .toList(),
                  ],
                ),
              ),
            ),
            SizedBox(height: Responsive.height(0.05)),
          ],
        ),
      ),
    );
  }
}
