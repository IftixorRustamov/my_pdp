// GuestsScreen Widget Converted to Sliver
import 'package:flutter/material.dart';
import 'package:my_pdp/common/app_colors.dart';
import 'package:my_pdp/common/app_responsive.dart';
import 'package:my_pdp/common/img_paths.dart';

class GuestsScreen extends StatelessWidget {
  GuestsScreen({super.key});

  final List<Map<String, dynamic>> guestList = [
    {
      "image": ImgPaths.guest1,
      "text1": "\ud83d\ude80 Welcome to the guest lecture with Ruslan Yuldashev!",
      "text2": "\ud83d\uddd3 | 05.05.2023",
      "text3": "\u23f0 | 17:30",
      "text4": "\ud83d\udce2 | English",
      "text5": "\ud83d\udccd | Lecture room, PDP University"
    },
    {
      "image": ImgPaths.guest2,
      "text1": "\ud83d\udd14 Welcome to the guest lecture with Marifat Jamal!",
      "text2": "\ud83d\uddd3 | 24.11.2022",
      "text3": "\u23f0 | 13:00",
      "text4": "\ud83d\udce2 | English",
      "text5": "\ud83d\udccd | Lecture room, PDP University"
    },
    {
      "image": ImgPaths.guest3,
      "text1": "\ud83d\ude80 Welcome to the guest lecture with Amon Olimov!",
      "text2": "\ud83d\uddd3 | 28.04.2023",
      "text3": "\u23f0 | 16:00",
      "text4": "\ud83d\udce2 | English",
      "text5": "\ud83d\udccd | Lecture room, PDP University"
    }
  ];

  SliverList toSliver() {
    return SliverList(
      delegate: SliverChildBuilderDelegate(
        (context, index) {
          final guest = guestList[index];
          return Container(
            margin: EdgeInsets.symmetric(
              vertical: Responsive.height(0.0125),
              horizontal: Responsive.height(0.013),
            ),
            height: Responsive.height(0.27),
            decoration: BoxDecoration(
              color: AppColors.darkCyanGreen,
              borderRadius: BorderRadius.circular(Responsive.height(0.025)),
              boxShadow: [
                BoxShadow(
                  color: Colors.black26,
                  blurRadius: Responsive.width(0.019),
                  spreadRadius: Responsive.width(0.005),
                ),
              ],
            ),
            child: Row(
              children: index % 2 == 0
                  ? [
                      _buildTextSection(guest, isLeftAligned: true),
                      _buildImageSection(guest),
                    ]
                  : [
                      _buildImageSection(guest),
                      _buildTextSection(guest, isLeftAligned: false),
                    ],
            ),
          );
        },
        childCount: guestList.length,
      ),
    );
  }

  Widget _buildTextSection(Map<String, dynamic> guest, {required bool isLeftAligned}) {
    return Expanded(
      child: Padding(
        padding: EdgeInsets.all(Responsive.height(0.015)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              guest["text1"],
              style: TextStyle(
                color: AppColors.white,
                fontSize: Responsive.height(0.0195),
                fontWeight: FontWeight.bold,
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  guest["text2"],
                  style: TextStyle(
                    color: AppColors.white,
                    fontSize: Responsive.height(0.017),
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Text(
                  guest["text3"],
                  style: TextStyle(
                    color: AppColors.white,
                    fontSize: Responsive.height(0.017),
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Text(
                  guest["text4"],
                  style: TextStyle(
                    color: AppColors.white,
                    fontSize: Responsive.height(0.017),
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Text(
                  guest["text5"],
                  style: TextStyle(
                    color: AppColors.white,
                    fontSize: Responsive.height(0.017),
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildImageSection(Map<String, dynamic> guest) {
    return Expanded(
      child: ClipRRect(
        borderRadius: BorderRadius.horizontal(
          left: Radius.circular(Responsive.height(0.025)),
          right: Radius.circular(Responsive.height(0.025)),
        ),
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(guest["image"]),
              fit: BoxFit.cover,
            ),
          ),
        ),
      ),
    );
  }
  
  @override
  Widget build(BuildContext context) {
    throw UnimplementedError();
  }
}