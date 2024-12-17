import 'package:flutter/material.dart';
import 'package:my_pdp/common/app_colors.dart';
import 'package:my_pdp/common/app_responsive.dart';
import 'package:my_pdp/common/img_paths.dart';

class DiscoverScreen extends StatelessWidget {
  const DiscoverScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      // App Bar Part
      appBar: AppBar(
        toolbarHeight: Responsive.height(0.09),
        backgroundColor: AppColors.silver,
        centerTitle: true,
        // Menu Button
        leading: Icon(
          Icons.menu,
          size: Responsive.height(0.04),
        ),
        actions: [
          Icon(
            Icons.person_outline_rounded,
            size: Responsive.height(0.04),
          ),
          SizedBox(
            width: Responsive.width(0.03),
          )
        ],
        //App Bar Center Logo and text Part
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image(
              image: AssetImage(ImgPaths.appBarLogo),
              height: Responsive.height(0.04),
              fit: BoxFit.contain,
            ),
            SizedBox(
              width: Responsive.width(0.019),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "PDP",
                  style: TextStyle(
                      height: Responsive.height(0.0013),
                      fontSize: Responsive.height(0.023),
                      fontWeight: FontWeight.w600),
                ),
                Text(
                  "UNIVERSITY",
                  style: TextStyle(
                      height: Responsive.height(0.0012),
                      fontSize: Responsive.height(0.023),
                      fontWeight: FontWeight.w600),
                )
              ],
            )
          ],
        ),
      ),
      body: SizedBox(
        width: double.infinity,
        child: Column(
          children: [],
        ),
      ),
    );
  }
}
