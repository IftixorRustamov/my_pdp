import 'package:flutter/material.dart';
import 'package:my_pdp/common/app_responsive.dart';
import 'package:my_pdp/common/app_strings.dart';
import 'package:my_pdp/data/course_data.dart'; // Import the course_data.dart file for Course and CourseUnit classes
import 'package:my_pdp/common/app_colors.dart';
import 'package:my_pdp/data/subject_data.dart'; // Import subject_data for cardNames
import '../widgets/search_part_wg.dart';
import '../widgets/subject_card_wg.dart'; // Import the SearchPartWg that was updated

class CourseExpansionTile extends StatelessWidget {
  final Course course;

  const CourseExpansionTile({super.key, required this.course});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.symmetric(
          vertical: Responsive.height(0.008),
          horizontal: Responsive.width(0.02)),
      elevation: 6,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      color: AppColors.white,
      child: ExpansionTile(
        tilePadding: EdgeInsets.symmetric(
            horizontal: Responsive.width(0.05),
            vertical: Responsive.height(0.015)),
        title: Text(
          course.name,
          style: TextStyle(
            fontWeight: FontWeight.w700,
            fontSize: Responsive.height(0.02),
            color: AppColors.darkCyanGreen,
          ),
        ),
        collapsedBackgroundColor: AppColors.white,
        backgroundColor: AppColors.white,
        collapsedShape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        iconColor: AppColors.green,
        collapsedIconColor: AppColors.green,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(
                horizontal: Responsive.width(0.06),
                vertical: Responsive.height(0.01)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  flex: 3,
                  child: Text(
                    "Unit",
                    style: TextStyle(
                        fontSize: Responsive.height(0.016),
                        fontWeight: FontWeight.bold,
                        color: AppColors.darkCyanGreen),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Text(
                    "I-semester",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: Responsive.height(0.016),
                        fontWeight: FontWeight.bold,
                        color: AppColors.darkCyanGreen),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Text(
                    "II-semester",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: Responsive.height(0.016),
                        fontWeight: FontWeight.bold,
                        color: AppColors.darkCyanGreen),
                  ),
                ),
              ],
            ),
          ),
          Divider(height: 1, color: AppColors.silver),
          ...course.units.map((unit) {
            return Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: Responsive.width(0.06),
                  vertical: Responsive.height(0.008)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    flex: 3,
                    child: Text(
                      unit.unit,
                      style: TextStyle(
                        fontSize: Responsive.height(0.015),
                        color: AppColors.black,
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Text(
                      unit.iSemesterHours ?? "",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: Responsive.height(0.015),
                        color: AppColors.black,
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Text(
                      unit.iiSemesterHours ?? "",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: Responsive.height(0.015),
                        color: AppColors.black,
                      ),
                    ),
                  ),
                ],
              ),
            );
          }).toList(),
          SizedBox(height: Responsive.height(0.015)),
        ],
      ),
    );
  }
}
// --- End Dummy CourseExpansionTile implementation ---

class SubjectsPage extends StatefulWidget {
  const SubjectsPage({super.key});

  @override
  State<SubjectsPage> createState() => _SubjectsPageState();
}

class _SubjectsPageState extends State<SubjectsPage> {
  late TextEditingController _searchController;
  List<String> _filteredSubjectNames = [];
  List<Course> _filteredCourses = [];

  @override
  void initState() {
    super.initState();
    _searchController = TextEditingController();
    _filteredSubjectNames = List.from(cardNames);
    _filteredCourses = List.from(courseData);

    _searchController.addListener(_filterContent);
  }

  @override
  void dispose() {
    _searchController.removeListener(_filterContent);
    _searchController.dispose();
    super.dispose();
  }

  void _filterContent() {
    final query = _searchController.text.toLowerCase();

    setState(() {
      _filteredSubjectNames = cardNames
          .where((subject) => subject.toLowerCase().contains(query))
          .toList();

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
      body: Column(
        children: [
          // The HeaderPartWg is included here for the self-contained example
          // to fully demonstrate the UI, but in your full app,
          // it would likely be handled by the MainPage's AppBar.
          Container(
            width: double.infinity,
            color: AppColors.darkCyanGreen,
            padding: EdgeInsets.symmetric(
                horizontal: Responsive.width(0.04),
                vertical: Responsive.height(0.02)),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'BTEC Pearson',
                  style: TextStyle(
                    color: AppColors.white,
                    fontSize: Responsive.height(0.018),
                  ),
                ),
                SizedBox(height: Responsive.height(0.01)),
                Text(
                  AppStrings.pdpModules,
                  style: TextStyle(
                    color: AppColors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: Responsive.height(0.025),
                  ),
                ),
                SizedBox(height: Responsive.height(0.01)),
              ],
            ),
          ),
          Expanded(
            child: SingleChildScrollView(
              padding: const EdgeInsets.all(13),
              child: Column(
                children: [
                  SearchPartWg(
                    text: AppStrings.subjects,
                    controller: _searchController,
                    onChanged: (value) {
                      // The listener handles the filtering, no need for direct action here
                    },
                  ),
                  SizedBox(height: Responsive.height(0.02)),
                  // GridView for Subjects (appears first)
                  _filteredSubjectNames.isEmpty
                      ? Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: Text(
                            "No subjects found for your search.",
                            style: TextStyle(
                                fontSize: Responsive.height(0.018),
                                color: AppColors.grey),
                            textAlign: TextAlign.center,
                          ),
                        )
                      : GridView.builder(
                          shrinkWrap: true,
                          primary: false,
                          itemCount: _filteredSubjectNames.length,
                          gridDelegate:
                              SliverGridDelegateWithMaxCrossAxisExtent(
                            maxCrossAxisExtent: Responsive.width(0.41),
                            childAspectRatio: 0.82 / 1,
                            mainAxisSpacing: Responsive.height(0.015),
                            crossAxisSpacing: Responsive.width(0.025),
                          ),
                          itemBuilder: (BuildContext context, int index) {
                            final originalIndex =
                                cardNames.indexOf(_filteredSubjectNames[index]);
                            return SubjectCardWg(
                              index: originalIndex,
                            );
                          },
                        ),
                  SizedBox(height: Responsive.height(0.03)),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal: Responsive.width(0.01)),
                      child: Text(
                        "Course List",
                        style: TextStyle(
                          fontSize: Responsive.height(0.025),
                          fontWeight: FontWeight.bold,
                          color: AppColors.darkCyanGreen,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: Responsive.height(0.01)),
                  // Course List Tiles (appears below subjects)
                  _filteredCourses.isEmpty
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
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
