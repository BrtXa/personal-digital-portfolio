import 'package:digital_portfolio/controller/routes/app_routes.dart';
import 'package:digital_portfolio/common/palette.dart';
import 'package:flutter/material.dart';

import 'package:digital_portfolio/controller/routes/router.dart' as router;

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Portfolio of HMD",
      theme: ThemeData(
        primaryColor: myColors[mainBlue],
        scaffoldBackgroundColor: Colors.white,
      ),
      // The first screen appearts is the Landing Page.
      onGenerateRoute: router.generateRoute,
      initialRoute: Routes.landingPage,
    );
  }
}
