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
      // App Bar Part
      appBar: AppBar(
        toolbarHeight: Responsive.height(0.09),
        backgroundColor: AppColors.silver,
        centerTitle: true,
        // Menu Button
        leading: Icon(
          Icons.menu,
          size: Responsive.height(0.038),
        ),
        actions: [
          Icon(
            CupertinoIcons.person_circle,
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
                  AppStrings.university,
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
      body: _pages[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: AppColors.white,
        currentIndex: _currentIndex,
        selectedItemColor: AppColors.green,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: Image(
              image: AssetImage(IconPaths.bookshelf3),
              height: Responsive.width(0.07),
            ),
            activeIcon: Image(
              image: AssetImage(IconPaths.bookshelf2),
              height: Responsive.width(0.07),
            ),
            label: AppStrings.subjects,
          ),
          BottomNavigationBarItem(
            icon: Image(
              image: AssetImage(IconPaths.information2),
              height: Responsive.width(0.07),
            ),
            activeIcon: Image(
              image: AssetImage(IconPaths.information),
              height: Responsive.width(0.07),
            ),
            label: AppStrings.aboutUniversity,
          ),
          BottomNavigationBarItem(
            icon: Image(
              image: AssetImage(IconPaths.achievement),
              height: Responsive.width(0.07),
            ),
            activeIcon: Image(
              image: AssetImage(IconPaths.achievement2),
              height: Responsive.width(0.07),
            ),
            label: AppStrings.eventsAndHolidays,
          ),
        ],
      ),
    );
  }

// Widget _buildIcon(String assetPath, int index) {
//   return Image.asset(
//     color: _currentIndex == index ? AppColors.green : AppColors.grey,
//     assetPath,
//     height: 40,
//     width: 40,
//   );
// }
}
