import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../common/app_colors.dart';
import '../../common/app_responsive.dart';
import '../../data/person_data.dart';

class ContactInfoSection extends StatelessWidget {
  final ContactDetails contact;

  const ContactInfoSection({super.key, required this.contact});

  Future<void> _launchUrl(String url) async {
    final uri = Uri.parse(url);
    if (!await launchUrl(uri)) {
      debugPrint('Could not launch $url'); // Use debugPrint instead of throw
    }
  }

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
            Text(
              "Location & Contact",
              style: TextStyle(
                fontSize: Responsive.height(0.025),
                fontWeight: FontWeight.bold,
                color: AppColors.darkCyanGreen,
              ),
            ),
            SizedBox(height: Responsive.height(0.02)),
            ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.asset(
                contact.mapImagePath,
                height: Responsive.height(0.25),
                width: double.infinity,
                fit: BoxFit.cover,
                errorBuilder: (context, error, stackTrace) => Container(
                  height: Responsive.height(0.25),
                  color: AppColors.silver,
                  child: Center(
                    child: Text(
                      "Map Image Not Found",
                      style: TextStyle(color: AppColors.grey),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: Responsive.height(0.02)),
            _buildContactDetailRow(Icons.public, "Country:", contact.country),
            _buildContactDetailRow(Icons.location_city, "City:", contact.city),
            _buildContactDetailRow(
                Icons.location_on, "Address:", contact.address),
            GestureDetector(
              onTap: () async {
                await _launchUrl(contact.websiteUrl);
              },
              child: _buildContactDetailRow(
                  Icons.link, "Website:", contact.websiteUrl,
                  isLink: true),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildContactDetailRow(IconData icon, String label, String value,
      {bool isLink = false}) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: Responsive.height(0.005)),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Icon(icon, color: AppColors.green, size: Responsive.height(0.02)),
          SizedBox(width: Responsive.width(0.02)),
          Text(
            label,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: Responsive.height(0.016),
              color: AppColors.darkCyanGreen,
            ),
          ),
          SizedBox(width: Responsive.width(0.01)),
          Expanded(
            child: Text(
              value,
              style: TextStyle(
                fontSize: Responsive.height(0.016),
                color: isLink ? AppColors.green : AppColors.black,
                decoration:
                    isLink ? TextDecoration.underline : TextDecoration.none,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
