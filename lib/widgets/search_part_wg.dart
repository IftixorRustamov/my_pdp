import 'package:flutter/material.dart';
import 'package:my_pdp/common/app_responsive.dart';
import 'package:my_pdp/common/app_colors.dart';

class SearchPartWg extends StatelessWidget {
  final String text;
  final TextEditingController controller; // New: Controller for the TextField
  final ValueChanged<String>? onChanged; // New: Callback for text changes

  const SearchPartWg({
    super.key,
    required this.text,
    required this.controller, // Required controller
    this.onChanged, // Optional onChanged callback
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: Responsive.height(0.02)),
      padding: EdgeInsets.symmetric(horizontal: Responsive.width(0.03)),
      decoration: BoxDecoration(
        color: AppColors.darkCyanGreen,
        borderRadius: BorderRadius.circular(10), // Rounded corners
      ),
      child: TextField(
        controller: controller, // Assign the controller
        onChanged: onChanged, // Assign the onChanged callback
        style: TextStyle(color: AppColors.white), // White text for input
        decoration: InputDecoration(
          hintText: 'Search $text',
          hintStyle: TextStyle(color: AppColors.grey), // Grey hint text
          border: InputBorder.none, // No border for the TextField itself
          prefixIcon: Icon(Icons.search, color: AppColors.grey), // Search icon
        ),
      ),
    );
  }
}
