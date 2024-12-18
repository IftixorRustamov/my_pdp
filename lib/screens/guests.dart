import 'package:flutter/material.dart';
import 'package:my_pdp/common/app_colors.dart';
import 'package:my_pdp/common/app_responsive.dart';
import 'package:my_pdp/common/img_paths.dart';

// ignore: must_be_immutable
class GuestsScreen extends StatelessWidget {
  GuestsScreen({super.key});
  List<Map<String, dynamic>> guestList = [
    {
      "image": ImgPaths.guest1,
      "text1": "🚀 Welcome to the guest lecture with Ruslan Yuldashev!",
      "text2": "🗓 | 05.05.2023",
      "text3": "⏰ | 17:30",
      "text4": "📢 | English",
      "text5": "📍 | Lecture room, PDP University"
    },
    {
      "image": ImgPaths.guest2,
      "text1": "🔔 Welcome to the guest lecture with Marifat Jamal!",
      "text2": "🗓 | 24.11.2022",
      "text3": "⏰ | 13:00",
      "text4": "📢 | English",
      "text5": "📍 | Lecture room, PDP University"
    },
    {
      "image": ImgPaths.guest3,
      "text1": "🚀 Welcome to the guest lecture with Amon Olimov! ",
      "text2": "🗓 | 28.04.2023",
      "text3": "⏰ | 16:00",
      "text4": "📢 | English",
      "text5": "📍 | Lecture room, PDP University"
    }
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: double.infinity,
        child: Column(
          children: [
            SizedBox(
              height: Responsive.height(0.013),
            ),
            Expanded(
              child: ListView.builder(
                  itemCount: guestList.length,
                  itemBuilder: (context, index) => index % 2 == 0
                      ? Container(
                          margin: EdgeInsets.fromLTRB(
                            Responsive.height(0.013),
                            Responsive.height(0.0125),
                            Responsive.height(0.013),
                            Responsive.height(0.0125),
                          ),
                          height: Responsive.height(0.27),
                          width: double.infinity,
                          decoration: BoxDecoration(
                            color: AppColors.darkCyanGreen,
                            borderRadius: BorderRadius.circular(
                              Responsive.height(0.025),
                            ),
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.black26,
                                  blurRadius: Responsive.width(0.019),
                                  spreadRadius: Responsive.width(0.005)),
                            ],
                          ),
                          child: Row(
                            children: [
                              Expanded(
                                child: Padding(
                                  padding:
                                      EdgeInsets.all(Responsive.height(0.015)),
                                  child: Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        guestList[index]["text1"],
                                        style: TextStyle(
                                          color: AppColors.white,
                                          fontSize: Responsive.height(0.0195),
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            guestList[index]["text2"],
                                            style: TextStyle(
                                              color: AppColors.white,
                                              fontSize:
                                                  Responsive.height(0.017),
                                              fontWeight: FontWeight.w600,
                                            ),
                                          ),
                                          Text(
                                            guestList[index]["text3"],
                                            style: TextStyle(
                                              color: AppColors.white,
                                              fontSize:
                                                  Responsive.height(0.017),
                                              fontWeight: FontWeight.w600,
                                            ),
                                          ),
                                          Text(
                                            guestList[index]["text4"],
                                            style: TextStyle(
                                              color: AppColors.white,
                                              fontSize:
                                                  Responsive.height(0.017),
                                              fontWeight: FontWeight.w600,
                                            ),
                                          ),
                                          Text(
                                            guestList[index]["text5"],
                                            style: TextStyle(
                                              color: AppColors.white,
                                              fontSize:
                                                  Responsive.height(0.017),
                                              fontWeight: FontWeight.w600,
                                            ),
                                          ),
                                          SizedBox(
                                            height: Responsive.height(0.015),
                                          )
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                              ),
                              Expanded(
                                  child: ClipRRect(
                                borderRadius: BorderRadius.only(
                                  bottomRight: Radius.circular(
                                    Responsive.height(0.025),
                                  ),
                                  topRight: Radius.circular(
                                    Responsive.height(0.025),
                                  ),
                                ),
                                child: Container(
                                  decoration: BoxDecoration(
                                      image: DecorationImage(
                                          image: AssetImage(
                                            guestList[index]["image"],
                                          ),
                                          fit: BoxFit.cover)),
                                ),
                              ))
                            ],
                          ),
                        )
                      : Container(
                          margin: EdgeInsets.fromLTRB(
                            Responsive.height(0.013),
                            Responsive.height(0.0125),
                            Responsive.height(0.013),
                            Responsive.height(0.0125),
                          ),
                          height: Responsive.height(0.27),
                          width: double.infinity,
                          decoration: BoxDecoration(
                            color: AppColors.darkCyanGreen,
                            borderRadius: BorderRadius.circular(
                              Responsive.height(0.025),
                            ),
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.black26,
                                  blurRadius: Responsive.width(0.019),
                                  spreadRadius: Responsive.width(0.005)),
                            ],
                          ),
                          child: Row(
                            children: [
                              Expanded(
                                child: ClipRRect(
                                  borderRadius: BorderRadius.only(
                                    bottomLeft: Radius.circular(
                                      Responsive.height(0.025),
                                    ),
                                    topLeft: Radius.circular(
                                      Responsive.height(0.025),
                                    ),
                                  ),
                                  child: Container(
                                    decoration: BoxDecoration(
                                        image: DecorationImage(
                                            image: AssetImage(
                                              guestList[index]["image"],
                                            ),
                                            fit: BoxFit.cover)),
                                  ),
                                ),
                              ),
                              Expanded(
                                child: Padding(
                                  padding:
                                      EdgeInsets.all(Responsive.height(0.015)),
                                  child: Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        guestList[index]["text1"],
                                        style: TextStyle(
                                          color: AppColors.white,
                                          fontSize: Responsive.height(0.0195),
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            guestList[index]["text2"],
                                            style: TextStyle(
                                              color: AppColors.white,
                                              fontSize:
                                                  Responsive.height(0.017),
                                              fontWeight: FontWeight.w600,
                                            ),
                                          ),
                                          Text(
                                            guestList[index]["text3"],
                                            style: TextStyle(
                                              color: AppColors.white,
                                              fontSize:
                                                  Responsive.height(0.017),
                                              fontWeight: FontWeight.w600,
                                            ),
                                          ),
                                          Text(
                                            guestList[index]["text4"],
                                            style: TextStyle(
                                              color: AppColors.white,
                                              fontSize:
                                                  Responsive.height(0.017),
                                              fontWeight: FontWeight.w600,
                                            ),
                                          ),
                                          Text(
                                            guestList[index]["text5"],
                                            style: TextStyle(
                                              color: AppColors.white,
                                              fontSize:
                                                  Responsive.height(0.017),
                                              fontWeight: FontWeight.w600,
                                            ),
                                          ),
                                          SizedBox(
                                            height: Responsive.height(0.015),
                                          )
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        )),
            )
          ],
        ),
      ),
    );
  }
}
