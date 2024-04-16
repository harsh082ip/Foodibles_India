import 'package:flutter/material.dart';
import 'package:foodibles_admin/constants/drawer_const.dart';
import 'package:foodibles_admin/view/screens/web/web_adduser.dart';

class WebHomeScreen extends StatelessWidget {
  const WebHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // String size = MediaQuery.of(context).size.width.toString();
    return Scaffold(
      backgroundColor: Colors.white,
      body: Row(
        children: [
          Drawer(
            backgroundColor: Colors.white,
            child: Column(
              children: [
                const DrawerHeader(child: Icon(Icons.favorite)),
                allUsersTile
              ],
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => Web_AddUser()));
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
