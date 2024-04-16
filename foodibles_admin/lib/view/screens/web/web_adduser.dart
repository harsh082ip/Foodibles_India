import 'package:flutter/material.dart';
import 'package:foodibles_admin/constants/drawer_const.dart';
import 'package:foodibles_admin/view/shared_res/add_user.dart';

class Web_AddUser extends StatefulWidget {
  const Web_AddUser({super.key});

  @override
  State<Web_AddUser> createState() => _Web_AddUserState();
}

class _Web_AddUserState extends State<Web_AddUser> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            'Add User',
          ),
          centerTitle: true,
          backgroundColor: Colors.white,
        ),
        body: AddUser());
  }
}
