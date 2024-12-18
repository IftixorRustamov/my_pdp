import 'package:flutter/material.dart';
import 'package:my_pdp/widgets/pdp_info_card_wg.dart';

import '../common/app_colors.dart';
import '../common/app_responsive.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
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
                  SizedBox(height: Responsive.height(0.02)),
                ],
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 40),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Biz Haqimizda",
                      style: TextStyle(
                        color: AppColors.green,
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "Raqamli texnologiyalar yordamida dunyoni yaxshi tarafga o’zgartira oladigan mutaxassislarni tayyorlaymiz, shu sohadagi mahsulot va xizmatlarni ishlab chiqaramiz.",
                      maxLines: 3,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(color: AppColors.black, fontSize: 13),
                    ),
                    Container(
                      width: double.infinity,
                      height: Responsive.height(0.4),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Image.asset(
                            "assets/images/content.png",
                            scale: 3,
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: Responsive.height(0.3),
                    ),

                    //second page start
                    Container(
                      width: double.infinity,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "University priorities",
                            style: TextStyle(fontSize: 30),
                          ),
                          SizedBox(
                            height: Responsive.height(0.05),
                          ),
                          Container(
                            padding: EdgeInsets.symmetric(
                                vertical: Responsive.width(0.1), horizontal: Responsive.height(0.05)),
                            decoration: BoxDecoration(
                                color: AppColors.white,
                                borderRadius: BorderRadius.circular(15),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey.withOpacity(0.5),
                                    // Shadow color
                                    spreadRadius: 2,
                                    // How much the shadow spreads
                                    blurRadius: 10,
                                    // Softness of the shadow
                                    offset: Offset(
                                        5, 5), // Position of the shadow (x, y)
                                  ),
                                ]),

                            child: Column(
                              children: [
                                Image.asset("assets/images/about_mission.png"),
                                Text(
                                  "PDP University",
                                  style: TextStyle(fontSize: 30,color: AppColors.green),
                                ),
                                Text(
                                  "Mission",
                                  style: TextStyle(fontSize: 30,color: AppColors.green),
                                ),
                                SizedBox(height: 20,),
                                Text('Raqamli texnologiyalar yordamida dunyoni yaxshi tarafga o’zgartira oladigan mutaxassislarni tayyorlaymiz.')
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: Responsive.height(0.3),
                    ),
                    PDPInfoCard(),
                    SizedBox(
                      height: Responsive.height(0.2),
                    ),
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
