// lib/screens/course_list_page.dart

import 'package:flutter/material.dart';
import 'package:my_pdp/common/app_colors.dart';
import 'package:my_pdp/common/app_responsive.dart';
import 'package:my_pdp/data/course_data.dart'; // Ensure Course and CourseUnit are defined here
import 'package:my_pdp/widgets/search_part_wg.dart'; // Import the search widget
import 'package:my_pdp/widgets/subjects/course_expansion_tile.dart'; // Import the CourseExpansionTile

class CourseListPage extends StatefulWidget {
  const CourseListPage({super.key});

  @override
  State<CourseListPage> createState() => _CourseListPageState();
}

class _CourseListPageState extends State<CourseListPage> {
  late TextEditingController _searchController;
  List<Course> _filteredCourses = [];

  @override
  void initState() {
    super.initState();
    _searchController = TextEditingController();
    _filteredCourses = List.from(courseData); // Initialize with all courses
    _searchController.addListener(_filterCourses);
  }

  @override
  void dispose() {
    _searchController.removeListener(_filterCourses);
    _searchController.dispose();
    super.dispose();
  }

  void _filterCourses() {
    final query = _searchController.text.toLowerCase();
    setState(() {
      _filteredCourses = courseData.where((course) {
        final courseNameMatches = course.name.toLowerCase().contains(query);
        final unitMatches =
            course.units.any((unit) => unit.unit.toLowerCase().contains(query));
        return courseNameMatches || unitMatches;
      }).toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      appBar: AppBar(
        title: Text(
          "All Courses",
          style: TextStyle(
            color: AppColors.white,
            fontWeight: FontWeight.bold,
            fontSize: Responsive.height(0.025),
          ),
        ),
        backgroundColor: AppColors.darkCyanGreen,
        iconTheme: IconThemeData(color: AppColors.white), // White back icon
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 13.0),
            child: SearchPartWg(
              text: "courses", // Text for search hint
              controller: _searchController,
            ),
          ),
          Expanded(
            child: SingleChildScrollView(
              // Make sure the content itself is scrollable
              padding: const EdgeInsets.symmetric(horizontal: 13.0),
              // Padding for scrollable content
              child: _filteredCourses.isEmpty
                  ? Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Text(
                        "No courses found for your search.",
                        style: TextStyle(
                            fontSize: Responsive.height(0.018),
                            color: AppColors.grey),
                        textAlign: TextAlign.center,
                      ),
                    )
                  : ListView.builder(
                      shrinkWrap: true,
                      primary: false,
                      itemCount: _filteredCourses.length,
                      itemBuilder: (context, index) {
                        return CourseExpansionTile(
                            course: _filteredCourses[index]);
                      },
                    ),
            ),
          ),
        ],
      ),
    );
  }
}
