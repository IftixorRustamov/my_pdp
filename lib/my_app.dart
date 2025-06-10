import 'package:flutter/material.dart';
import 'package:my_pdp/common/app_responsive.dart';
import 'package:my_pdp/screens/auth_page.dart';
import 'package:my_pdp/screens/main_page.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    Responsive.init(context);
    print(Responsive.screenWidth);
    print(Responsive.screenHeight);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: AuthPage(),
    );
  }
}
