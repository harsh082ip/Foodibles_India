import 'package:flutter/material.dart';

class MobileHomeScreen extends StatelessWidget {
  const MobileHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    String size = MediaQuery.of(context).size.width.toString();
    return Scaffold(
      backgroundColor: Colors.yellow,
      body: Center(
        child: Text(size),
      ),
    );
  }
}
