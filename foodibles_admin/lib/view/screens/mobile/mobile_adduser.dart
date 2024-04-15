import 'package:flutter/material.dart';
import 'package:foodibles_admin/constants/drawer_const.dart';

class MobileAddUser extends StatefulWidget {
  const MobileAddUser({Key? key}) : super(key: key);

  @override
  State<MobileAddUser> createState() => _MobileAddUserState();
}

class _MobileAddUserState extends State<MobileAddUser> {
  String _selectedOption = role[0];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              SizedBox(height: 20),
              TextFormField(
                decoration: InputDecoration(
                  labelText: 'Name',
                  border: OutlineInputBorder(),
                  filled: true,
                  fillColor: Colors.grey[200], // Add background color
                ),
              ),
              SizedBox(height: 20),
              TextFormField(
                decoration: InputDecoration(
                  labelText: 'Email',
                  border: OutlineInputBorder(),
                  filled: true,
                  fillColor: Colors.grey[200], // Add background color
                ),
              ),
              SizedBox(height: 20),
              TextFormField(
                decoration: InputDecoration(
                  labelText: 'Password',
                  border: OutlineInputBorder(),
                  filled: true,
                  fillColor: Colors.grey[200], // Add background color
                ),
              ),
              const SizedBox(height: 20),
              TextFormField(
                decoration: InputDecoration(
                  labelText: 'Phone Number',
                  border: const OutlineInputBorder(),
                  filled: true,
                  fillColor: Colors.grey[200], // Add background color
                ),
              ),
              SizedBox(height: 20),
              DropdownButtonFormField<String>(
                decoration: InputDecoration(
                  labelText: 'Role',
                  border: OutlineInputBorder(),
                  filled: true,
                  fillColor: Colors.grey[200], // Add background color
                ),
                value: _selectedOption,
                items: role.map<DropdownMenuItem<String>>((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
                onChanged: (String? newValue) {
                  setState(() {
                    _selectedOption = newValue!;
                  });
                },
              ),
              Container(
                margin:
                    EdgeInsets.symmetric(horizontal: 80.0).copyWith(top: 50.0),
                child: ElevatedButton(
                  onPressed: () {
                    // Handle form submission
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color.fromARGB(255, 84, 225, 59),
                    padding: const EdgeInsets.symmetric(vertical: 20.0),

                    // Adjust padding
                  ),
                  child: const Text(
                    'Submit',
                    style: TextStyle(
                        fontSize: 16, color: Colors.white), // Adjust font size
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
