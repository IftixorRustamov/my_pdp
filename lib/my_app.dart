import 'package:flutter/material.dart';
import 'package:my_pdp/common/app_responsive.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    Responsive.init(context);
    return MaterialApp();
  }
}
