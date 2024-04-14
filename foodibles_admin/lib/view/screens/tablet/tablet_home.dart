import 'package:flutter/material.dart';

class TabletHomeScreen extends StatelessWidget {
  const TabletHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    String size = MediaQuery.of(context).size.width.toString();
    return Scaffold(
      backgroundColor: Colors.green,
      body: Center(
        child: Text(size),
      ),
    );
  }
}
