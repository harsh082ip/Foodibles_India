import 'package:flutter/material.dart';
import 'package:foodibles_admin/responsive_layout.dart';
import 'package:foodibles_admin/view/screens/mobile/mobile_home.dart';
import 'package:foodibles_admin/view/screens/tablet/tablet_home.dart';
import 'package:foodibles_admin/view/screens/web/web_home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: ResponsiveLayout(
          mobileScreen: MobileHomeScreen(),
          tabletScreen: TabletHomeScreen(),
          webScreen: WebHomeScreen(),
        ));
  }
}
