import 'package:flutter/cupertino.dart';
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
          children: [
            // Body Top Text Part
            Container(
              width: double.infinity,
              height: Responsive.height(0.15),
              decoration: BoxDecoration(color: AppColors.darkCyanGreen),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    "BTEC Pearson",
                    style: TextStyle(
                        color: AppColors.white,
                        fontSize: Responsive.height(0.023)),
                  ),
                  SizedBox(
                    height: Responsive.height(0.013),
                  ),
                  Text(
                    "PDP University Events",
                    style: TextStyle(
                        color: AppColors.white,
                        fontSize: Responsive.height(0.03)),
                  ),
                  SizedBox(
                    height: Responsive.height(0.021),
                  ),
                ],
              ),
            ),
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
              // child: Stack(
              //   children: [
              //     Image(
              //       image: AssetImage(ImgPaths.guyAndGirl),
              //       height: Responsive.height(0.3),
              //     ),
              //     Container(
              //       alignment: Alignment.topRight,
              //       child: Transform.translate(
              //         offset: Offset(-Responsive.width(0.0008), 0),
              //         child: Image(
              //           image: AssetImage(ImgPaths.strips),
              //           height: Responsive.height(0.5),
              //           fit: BoxFit.contain,
              //         ),
              //       ),
              //     ),
              //     Container(
              //       margin: EdgeInsets.only(right: Responsive.width(0.037)),
              //       alignment: Alignment.centerRight,
              //       child: Row(
              //         mainAxisAlignment: MainAxisAlignment.end,
              //         children: [
              //           Column(
              //             mainAxisAlignment: MainAxisAlignment.center,
              //             crossAxisAlignment: CrossAxisAlignment.start,
              //             children: [
              //               Text(
              //                 "BTEC Pearson",
              //                 style: TextStyle(
              //                     color: AppColors.white,
              //                     fontSize: Responsive.height(0.025),
              //                     fontWeight: FontWeight.w400),
              //               ),
              //               Text(
              //                 "PDP Events",
              //                 style: TextStyle(
              //                     color: AppColors.white,
              //                     fontSize: Responsive.height(0.02),
              //                     fontWeight: FontWeight.w400),
              //               )
              //             ],
              //           ),
              //         ],
              //       ),
              //     )
              //   ],
              // ),
            )
          ],
        ),
      ),
    );
  }
}
