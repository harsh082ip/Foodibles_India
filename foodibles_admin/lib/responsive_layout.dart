import 'package:flutter/material.dart';

class ResponsiveLayout extends StatelessWidget {
  final Widget mobileScreen;
  final Widget tabletScreen;
  final Widget webScreen;
  const ResponsiveLayout(
      {super.key,
      required this.mobileScreen,
      required this.tabletScreen,
      required this.webScreen});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      if (constraints.maxWidth < 600) {
        return mobileScreen;
      } else if (constraints.maxWidth < 1200) {
        return tabletScreen;
      } else {
        return webScreen;
      }
    });
  }
}
