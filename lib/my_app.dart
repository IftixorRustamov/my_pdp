import 'package:flutter/material.dart';
import 'package:my_pdp/common/app_responsive.dart';
import 'package:my_pdp/screens/discover.dart';
import 'package:my_pdp/screens/main_page.dart';
import 'package:my_pdp/screens/subjects_page.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    Responsive.init(context);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MainPage(),
    );
  }
}
