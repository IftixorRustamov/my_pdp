import 'package:flutter/material.dart';
import 'package:my_pdp/common/app_responsive.dart';
import 'package:my_pdp/common/app_strings.dart';
import 'package:my_pdp/common/app_colors.dart';
import 'package:my_pdp/data/subject_data.dart';
import '../widgets/search_part_wg.dart';
import '../widgets/subject_card_wg.dart';
import '../widgets/subjects/evaluation_principles_card.dart';
import '../widgets/subjects/evaluation_rules_card.dart';
import '../widgets/subjects/view_courses_card.dart';

class SubjectsPage extends StatefulWidget {
  const SubjectsPage({super.key});

  @override
  State<SubjectsPage> createState() => _SubjectsPageState();
}

class _SubjectsPageState extends State<SubjectsPage> {
  late TextEditingController _searchController;
  List<String> _filteredSubjectNames = [];

  @override
  void initState() {
    super.initState();
    _searchController = TextEditingController();
    _filteredSubjectNames = List.from(cardNames);
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
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      body: Column(
        children: [
          // HeaderPartWg is typically managed by MainPage's AppBar
          // but kept here for self-contained example if needed for direct preview.
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
                  SizedBox(height: Responsive.height(0.02)),
                  // Card to navigate to the Course List Page
                  const ViewCoursesCard(),
                  SizedBox(height: Responsive.height(0.02)),
                  // Card to navigate to the Evaluation Principles Page
                  const EvaluationPrinciplesCard(),
                  SizedBox(height: Responsive.height(0.02)),
                  // NEW: Card to navigate to the Evaluation Rules Page
                  const EvaluationRulesCard(), // Added the new card here
                  SizedBox(height: Responsive.height(0.02)), // Additional spacing
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
