import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_pdp/common/app_strings.dart';
import 'package:my_pdp/common/icon_paths.dart';
import 'package:my_pdp/screens/about_page.dart';
import 'package:my_pdp/screens/subjects_page.dart';

import '../common/app_colors.dart';
import '../common/app_responsive.dart';
import '../common/img_paths.dart';
import 'discover.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _currentIndex = 0;

  final List<Widget> _pages = [
    SubjectsPage(),
    AboutPage(),
    DiscoverScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      // App Bar Part - Updated to match screenshot design
      appBar: AppBar(
        toolbarHeight: Responsive.height(0.09),
        backgroundColor: AppColors.darkCyanGreen, // Matched background color from screenshot
        centerTitle: true,
        // Menu Button
        leading: Icon(
          Icons.menu,
          size: Responsive.height(0.038),
          color: AppColors.white, // Ensured icon is white on dark background
        ),
        actions: [
          Icon(
            CupertinoIcons.person_circle,
            size: Responsive.height(0.04),
            color: AppColors.white, // Ensured icon is white on dark background
          ),
          SizedBox(
            width: Responsive.width(0.03),
          )
        ],
        //App Bar Center Logo and text Part - Updated for dark background
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Assuming appBarLogo is a white or transparent logo
            Image(
              image: AssetImage(ImgPaths.appBarLogo),
              height: Responsive.height(0.04),
              fit: BoxFit.contain,
              color: AppColors.green, // Assuming the logo itself should be green on dark background
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
                    fontWeight: FontWeight.w600,
                    color: AppColors.white, // Changed text color to white
                  ),
                ),
                Text(
                  AppStrings.university,
                  style: TextStyle(
                    height: Responsive.height(0.0012),
                    fontSize: Responsive.height(0.023),
                    fontWeight: FontWeight.w600,
                    color: AppColors.white, // Changed text color to white
                  ),
                )
              ],
            )
          ],
        ),
      ),
      body: _pages[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: AppColors.white,
        currentIndex: _currentIndex,
        selectedItemColor: AppColors.green,
        unselectedItemColor: AppColors.grey, // Ensured unselected items are grey
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: Image(
              image: AssetImage(IconPaths.bookshelf3), // Using non-active icon
              height: Responsive.width(0.07),
              color: _currentIndex == 0 ? AppColors.green : AppColors.grey, // Manually set color
            ),
            label: AppStrings.subjects,
          ),
          BottomNavigationBarItem(
            icon: Image(
              image: AssetImage(IconPaths.information2), // Using non-active icon
              height: Responsive.width(0.07),
              color: _currentIndex == 1 ? AppColors.green : AppColors.grey, // Manually set color
            ),
            label: AppStrings.aboutUniversity,
          ),
          BottomNavigationBarItem(
            icon: Image(
              image: AssetImage(IconPaths.achievement), // Using non-active icon
              height: Responsive.width(0.07),
              color: _currentIndex == 2 ? AppColors.green : AppColors.grey, // Manually set color
            ),
            label: AppStrings.eventsAndHolidays,
          ),
        ],
      ),
    );
  }
}
