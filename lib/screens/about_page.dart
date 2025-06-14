// lib/screens/about_page.dart

import 'package:flutter/material.dart';
import 'package:my_pdp/common/app_strings.dart';
import 'package:my_pdp/common/app_colors.dart';
import 'package:my_pdp/common/app_responsive.dart';

// Import data
import 'package:my_pdp/data/person_data.dart'; // Contains PersonInfo, ContactDetails, teamMembers, contactDetails
import 'package:my_pdp/data/pdp_ecosystem_data.dart'; // Data for ecosystem and grant
import 'package:my_pdp/data/pdp_history_data.dart'; // Import history data

// Import widgets
import 'package:my_pdp/widgets/header_part_wg.dart';
import 'package:my_pdp/widgets/pdp_info_card_wg.dart';
import 'package:my_pdp/widgets/about_uni/contact_info_section.dart';
import 'package:my_pdp/widgets/about_uni/person_card.dart';
import 'package:my_pdp/widgets/about_uni/pdp_ecosystem_service_tile.dart';
import 'package:my_pdp/widgets/about_uni/unicorn_grant_section.dart'; // Keep this import for now if other pages might use it.
import 'package:my_pdp/widgets/about_uni/pdp_history_card.dart';
import 'package:my_pdp/widgets/about_uni/pdp_details_card.dart'; // NEW: Import the new details card


class AboutPage extends StatelessWidget {
  const AboutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          HeaderPartWg(headerInfo: 'PDP University Informations'),
          Expanded(
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Padding(
                padding:
                const EdgeInsets.symmetric(horizontal: 20, vertical: 40),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Original "Biz Haqimizda" section
                    Text(
                      "Biz Haqimizda",
                      style: TextStyle(
                        color: AppColors.green,
                        fontSize: Responsive.height(0.03),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      height: Responsive.height(0.015),
                    ),
                    Text(
                      "Raqamli texnologiyalar yordamida dunyoni yaxshi tarafga o’zgartira oladigan mutaxassislarni tayyorlaymiz, shu sohadagi mahsulot va xizmatlarni ishlab chiqaramiz.",
                      style: TextStyle(
                          color: AppColors.black,
                          fontSize: Responsive.height(0.016)),
                      textAlign: TextAlign.justify,
                    ),
                    Container(
                      width: double.infinity,
                      height: Responsive.height(0.4),
                      alignment: Alignment.bottomRight,
                      child: Image.asset(
                        "assets/images/content.png", // Placeholder
                        height: Responsive.height(0.2),
                        fit: BoxFit.contain,
                      ),
                    ),
                    SizedBox(height: Responsive.height(0.05)),

                    // University Priorities Section
                    Container(
                      width: double.infinity,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "University priorities",
                            style: TextStyle(
                              fontSize: Responsive.height(0.03),
                              fontWeight: FontWeight.bold,
                              color: AppColors.darkCyanGreen,
                            ),
                          ),
                          SizedBox(
                            height: Responsive.height(0.03),
                          ),
                          const PDPInfoCard(),
                        ],
                      ),
                    ),
                    SizedBox(height: Responsive.height(0.05)),

                    // PDP Ecosystem Section
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal: Responsive.width(0.01)),
                        child: Text(
                          "PDP Ecosystem",
                          style: TextStyle(
                            fontSize: Responsive.height(0.028),
                            fontWeight: FontWeight.bold,
                            color: AppColors.darkCyanGreen,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: Responsive.height(0.01)),
                    ListView.builder(
                      shrinkWrap: true,
                      primary: false,
                      itemCount: pdpEcosystemServices.length,
                      itemBuilder: (context, index) {
                        return PdpEcosystemServiceTile(service: pdpEcosystemServices[index]);
                      },
                    ),
                    SizedBox(height: Responsive.height(0.05)),

                    // PDP History Card
                    const PdpHistoryCard(),
                    SizedBox(height: Responsive.height(0.05)),

                    // NEW: More About PDP Card (replaces Unicorn Grant and Person Cards directly)
                    const PdpDetailsCard(),
                    SizedBox(height: Responsive.height(0.05)),

                    // Location & Contact Info
                    ContactInfoSection(contact: contactDetails),
                    SizedBox(height: Responsive.height(0.05)),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
