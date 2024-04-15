import 'package:flutter/material.dart';
import 'package:foodibles_admin/view/screens/mobile/mobile_adduser.dart';
import 'package:foodibles_admin/view/screens/tablet/tablet_adduser.dart';

import '../../../constants/drawer_const.dart';

class TabletHomeScreen extends StatelessWidget {
  const TabletHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    String size = MediaQuery.of(context).size.width.toString();
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'Foodibles India Admin',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.white,
      ),
      drawer: Drawer(
        backgroundColor: Colors.white,
        child: Column(
          children: [
            const DrawerHeader(child: Icon(Icons.favorite)),
            allUsersTile
          ],
        ),
      ),
      body: Center(
        child: Text(size),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context)
              .push(MaterialPageRoute(builder: (context) => TabletAddUser()));
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
