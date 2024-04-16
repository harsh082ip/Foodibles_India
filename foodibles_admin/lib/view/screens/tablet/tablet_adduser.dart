import 'package:flutter/material.dart';
import 'package:foodibles_admin/constants/drawer_const.dart';
import 'package:foodibles_admin/view/shared_res/add_user.dart';

class TabletAddUser extends StatefulWidget {
  const TabletAddUser({super.key});

  @override
  State<TabletAddUser> createState() => _TabletAddUserState();
}

class _TabletAddUserState extends State<TabletAddUser> {
  @override
  Widget build(BuildContext context) {
    print('build');
    String _selectedOption = role[0];
    return Scaffold(
      // backgroundColor: Colors.pink,
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'Add User',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        // backgroundColor:
        //     Color.fromARGB(255, 84, 225, 59), // Change app bar color
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SingleChildScrollView(child: AddUser()),
      ),
    );
  }
}
