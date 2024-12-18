import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:my_pdp/common/app_colors.dart';
import 'package:my_pdp/common/app_responsive.dart';
import 'package:my_pdp/common/app_strings.dart';
import 'package:my_pdp/common/img_paths.dart';
import 'package:my_pdp/screens/guests.dart';
import '../common/icon_paths.dart';
import 'package:my_pdp/widgets/header_part_wg.dart';

class DiscoverScreen extends StatelessWidget {
  const DiscoverScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      body: CustomScrollView(
        slivers: [
          SliverPersistentHeader(
            pinned: true, // This keeps it fixed at the top
            floating:
                false, // Set to true if you want it to reappear when scrolling up
            delegate: _FixedHeaderDelegate(
              child: HeaderPartWg(headerInfo: AppStrings.pdpEvents),
              maxExtent: Responsive.height(0.12), // Adjust header height
              minExtent: Responsive.height(0.12),
            ),
          ),
          SliverToBoxAdapter(
            child: SizedBox(height: Responsive.height(0.02)),
          ),
          SliverToBoxAdapter(
            child: Container(
              width: double.infinity,
              height: Responsive.height(0.3),
              decoration: BoxDecoration(
                color: AppColors.darkCyanGreen,
                image: DecorationImage(
                  image: AssetImage(ImgPaths.guyAndGirl2),
                  fit: BoxFit.cover,
                ),
              ),
              child: Container(
                margin: EdgeInsets.only(right: Responsive.width(0.037)),
                alignment: Alignment.centerRight,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "BTEC Pearson",
                          style: TextStyle(
                            color: AppColors.white,
                            fontSize: Responsive.height(0.025),
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        Text(
                          "PDP Events",
                          style: TextStyle(
                            color: AppColors.white,
                            fontSize: Responsive.height(0.02),
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: SizedBox(height: Responsive.height(0.015)),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding:
                  EdgeInsets.symmetric(horizontal: Responsive.width(0.025)),
              child: Row(
                children: [
                  Image.asset(IconPaths.search),
                  SizedBox(width: Responsive.width(0.015)),
                  Text(
                    "Discover",
                    style: TextStyle(
                      color: AppColors.black,
                      fontSize: 24,
                      fontWeight: FontWeight.w700,
                      fontFamily: "Inter",
                    ),
                  ),
                ],
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: SizedBox(height: Responsive.height(0.017)),
          ),
          SliverPadding(
            padding: EdgeInsets.all(Responsive.width(0.039)),
            sliver: SliverGrid(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                childAspectRatio: 1 / 1.3,
                crossAxisCount: 3,
                crossAxisSpacing: Responsive.width(0.039),
                mainAxisSpacing: Responsive.height(0.02),
              ),
              delegate: SliverChildBuilderDelegate(
                (context, index) => Container(
                  decoration: BoxDecoration(
                    borderRadius:
                        BorderRadius.circular(Responsive.width(0.029)),
                    color: AppColors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black26,
                        blurRadius: Responsive.width(0.019),
                        spreadRadius: Responsive.width(0.005),
                      ),
                    ],
                  ),
                  child: Column(
                    children: [
                      // Image Section
                      Expanded(
                        child: ClipRRect(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(Responsive.width(0.029)),
                            topRight: Radius.circular(Responsive.width(0.029)),
                          ),
                          child: Container(
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage(
                                    "assets/images/discover${index + 1}.png"),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ),
                      ),

                      // Text Section
                      Expanded(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            SizedBox(height: Responsive.height(0.007)),
                            Text(
                              "PDP",
                              style: TextStyle(
                                color: AppColors.black,
                                fontWeight: FontWeight.w500,
                                fontSize: Responsive.height(0.017),
                              ),
                            ),
                            Text(
                              "English Club",
                              style: TextStyle(
                                height: Responsive.height(0.0009),
                                color: AppColors.black,
                                fontWeight: FontWeight.w500,
                                fontSize: Responsive.height(0.017),
                              ),
                            ),
                            SizedBox(height: Responsive.height(0.009)),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.location_on_rounded,
                                  color: Colors.red,
                                  size: Responsive.height(0.023),
                                ),
                                SizedBox(width: Responsive.width(0.005)),
                                Text(
                                  "Event Hall",
                                  style: TextStyle(
                                    color: AppColors.grey,
                                    fontWeight: FontWeight.w500,
                                    fontSize: Responsive.height(0.013),
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                childCount: 3, // Adjust the number of grid items
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: SizedBox(height: Responsive.height(0.023)),
          ),
          GuestsScreen().toSliver(),
          SliverToBoxAdapter(
            child: SizedBox(height: Responsive.height(0.017)),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding:
                  EdgeInsets.symmetric(horizontal: Responsive.width(0.025)),
              child: Row(
                children: [
                  Image.asset(IconPaths.search),
                  SizedBox(width: Responsive.width(0.015)),
                  Text(
                    "Podcast",
                    style: TextStyle(
                      color: AppColors.black,
                      fontSize: 24,
                      fontWeight: FontWeight.w700,
                      fontFamily: "Inter",
                    ),
                  ),
                ],
              ),
            ),
          ),
          SliverPadding(
            padding: EdgeInsets.symmetric(horizontal: Responsive.width(0.025)),
            sliver: SliverList(
              delegate: SliverChildListDelegate(
                [
                  // First Image
                  SizedBox(
                    width: double.infinity,
                    child: Image.asset(
                      ImgPaths.cardVideo,
                      width: double.infinity,
                      fit: BoxFit.cover,
                    ),
                  ),

                  // Second Image
                  SizedBox(
                    width: double.infinity,
                    child: Image.asset(
                      ImgPaths.cardVideo1,
                      width: double.infinity,
                      fit: BoxFit.cover,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _FixedHeaderDelegate extends SliverPersistentHeaderDelegate {
  final Widget child;
  @override
  final double minExtent;
  @override
  final double maxExtent;

  _FixedHeaderDelegate({
    required this.child,
    required this.minExtent,
    required this.maxExtent,
  });

  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return Container(
      color: Colors.white, // Optional: Add background color
      child: child,
    );
  }

  @override
  bool shouldRebuild(covariant SliverPersistentHeaderDelegate oldDelegate) {
    return true;
  }

  @override
  FloatingHeaderSnapConfiguration? get snapConfiguration => null;
}
