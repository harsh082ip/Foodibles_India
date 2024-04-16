import 'package:flutter/material.dart';
import 'package:foodibles_admin/constants/drawer_const.dart';
import 'package:foodibles_admin/view/shared_res/add_user.dart';

class MobileAddUser extends StatefulWidget {
  const MobileAddUser({Key? key}) : super(key: key);

  @override
  State<MobileAddUser> createState() => _MobileAddUserState();
}

class _MobileAddUserState extends State<MobileAddUser> {
  String _selectedOption = role[0];

  @override
  Widget build(BuildContext context) {
    print('build');
    return Scaffold(
      // backgroundColor: Colors.green,
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
