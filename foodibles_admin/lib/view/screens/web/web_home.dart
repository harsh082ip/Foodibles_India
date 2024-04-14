import 'package:flutter/material.dart';

class WebHomeScreen extends StatelessWidget {
  const WebHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    String size = MediaQuery.of(context).size.width.toString();
    return Scaffold(
      backgroundColor: Colors.red,
      body: Center(
        child: Text(size),
      ),
    );
  }
}
