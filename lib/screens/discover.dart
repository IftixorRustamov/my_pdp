import 'package:flutter/material.dart';
import 'package:my_pdp/common/app_colors.dart';
import 'package:my_pdp/common/app_responsive.dart';
import 'package:my_pdp/common/app_strings.dart';
import 'package:my_pdp/common/img_paths.dart';
import 'package:my_pdp/widgets/header_part_wg.dart';

import '../common/icon_paths.dart';

class DiscoverScreen extends StatelessWidget {
  const DiscoverScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      // App Bar Part
      // appBar: AppBar(
      //   toolbarHeight: Responsive.height(0.09),
      //   backgroundColor: AppColors.silver,
      //   centerTitle: true,
      //   // Menu Button
      //   leading: Icon(
      //     Icons.menu,
      //     size: Responsive.height(0.038),
      //   ),
      //   actions: [
      //     Icon(
      //       CupertinoIcons.person_circle,
      //       size: Responsive.height(0.04),
      //     ),
      //     SizedBox(
      //       width: Responsive.width(0.03),
      //     )
      //   ],
      //   //App Bar Center Logo and text Part
      //   title: Row(
      //     mainAxisAlignment: MainAxisAlignment.center,
      //     children: [
      //       Image(
      //         image: AssetImage(ImgPaths.appBarLogo),
      //         height: Responsive.height(0.04),
      //         fit: BoxFit.contain,
      //       ),
      //       SizedBox(
      //         width: Responsive.width(0.019),
      //       ),
      //       Column(
      //         crossAxisAlignment: CrossAxisAlignment.start,
      //         mainAxisAlignment: MainAxisAlignment.center,
      //         children: [
      //           Text(
      //             "PDP",
      //             style: TextStyle(
      //                 height: Responsive.height(0.0013),
      //                 fontSize: Responsive.height(0.023),
      //                 fontWeight: FontWeight.w600),
      //           ),
      //           Text(
      //             "UNIVERSITY",
      //             style: TextStyle(
      //                 height: Responsive.height(0.0012),
      //                 fontSize: Responsive.height(0.023),
      //                 fontWeight: FontWeight.w600),
      //           )
      //         ],
      //       )
      //     ],
      //   ),
      // ),
      body: SizedBox(
        width: double.infinity,
        child: Column(
          children: [
            // Body Top Text Part
            HeaderPartWg(headerInfo: AppStrings.pdpEvents),
            SizedBox(height: Responsive.height(0.02)),
            // Nerd Guy and Weird Girl Part
            Container(
              width: double.infinity,
              height: Responsive.height(0.3),
              decoration: BoxDecoration(
                  color: AppColors.darkCyanGreen,
                  image: DecorationImage(
                      image: AssetImage(ImgPaths.guyAndGirl2),
                      fit: BoxFit.cover)),
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
                              fontWeight: FontWeight.w400),
                        ),
                        Text(
                          "PDP Events",
                          style: TextStyle(
                              color: AppColors.white,
                              fontSize: Responsive.height(0.02),
                              fontWeight: FontWeight.w400),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: Responsive.height(0.015),
            ),
            Expanded(
              child: Padding(
                padding:
                    EdgeInsets.symmetric(horizontal: Responsive.width(0.025)),
                child: Column(
                  children: [
                    Row(
                      spacing: Responsive.width(0.015),
                      children: [
                        Image.asset(IconPaths.search),
                        Text(
                          "Discover",
                          style: TextStyle(
                              color: AppColors.black,
                              fontSize: 24,
                              fontWeight: FontWeight.w700,
                              fontFamily: "Inter"),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: Responsive.height(0.017),
                    ),
                    Expanded(
                      child: GridView.builder(
                        itemCount: 3,
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          childAspectRatio: 1 / 1.3,
                          crossAxisCount: 3,
                          crossAxisSpacing: Responsive.width(0.039),
                        ),
                        itemBuilder: (context, index) => Container(
                          decoration: BoxDecoration(
                            borderRadius:
                                BorderRadius.circular(Responsive.width(0.029)),
                            color: AppColors.white,
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.black26,
                                  blurRadius: Responsive.width(0.019),
                                  spreadRadius: Responsive.width(0.005)),
                            ],
                          ),
                          child: Column(
                            children: [
                              Expanded(
                                child: ClipRRect(
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(
                                        Responsive.width(0.029)),
                                    topRight: Radius.circular(
                                        Responsive.width(0.029)),
                                  ),
                                  child: Container(
                                    decoration: BoxDecoration(
                                      image: DecorationImage(
                                          image: AssetImage(
                                              "assets/images/discover${index + 1}.png"),
                                          fit: BoxFit.cover),
                                    ),
                                  ),
                                ),
                              ),
                              Expanded(
                                  child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  SizedBox(
                                    height: Responsive.height(0.007),
                                  ),
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
                                  SizedBox(
                                    height: Responsive.height(0.009),
                                  ),
                                  Row(
                                    spacing: Responsive.width(0.005),
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Icon(
                                        Icons.location_on_rounded,
                                        color: Colors.red,
                                        size: Responsive.height(0.023),
                                      ),
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
                              ))
                            ],
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
