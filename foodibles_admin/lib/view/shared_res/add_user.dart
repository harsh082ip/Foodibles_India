import 'package:flutter/material.dart';
import 'package:foodibles_admin/constants/drawer_const.dart';
import 'package:foodibles_admin/view/screens/web/web_adduser.dart';

class AddUser extends StatefulWidget {
  const AddUser({super.key});

  @override
  State<AddUser> createState() => _AddUserState();
}

class _AddUserState extends State<AddUser> {
  String _selectedOption = role[0];
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth < 600) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              SizedBox(height: 20),
              TextFormField(
                decoration: InputDecoration(
                  labelText: 'Mobile Name',
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
          );
        } else if (constraints.maxWidth < 1200) {
          return Column(
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
          );
        }
        return Row(
          children: [
            Drawer(
              child: allUsersTile,
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(25.0),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(25.0)),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 5,
                        blurRadius: 7,
                        offset: Offset(0, 3),
                      ),
                    ],
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'User Information',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 24.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 20),
                        TextFormField(
                          decoration: InputDecoration(
                            labelText: 'Name',
                            border: OutlineInputBorder(),
                          ),
                        ),
                        SizedBox(height: 20),
                        TextFormField(
                          decoration: InputDecoration(
                            labelText: 'Email',
                            border: OutlineInputBorder(),
                          ),
                        ),
                        SizedBox(height: 20),
                        Row(
                          children: [
                            Text('Phone'),
                            TextFormField(
                              decoration: InputDecoration(
                                labelText: 'Phone',
                                border: OutlineInputBorder(),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 20),
                        Container(
                          width: 600,
                          child: TextFormField(
                            obscureText: true,
                            decoration: InputDecoration(
                              labelText: 'Password',
                              border: OutlineInputBorder(),
                            ),
                          ),
                        ),
                        SizedBox(height: 20),
                        DropdownButtonFormField<String>(
                          value: _selectedOption,
                          items: role
                              .map<DropdownMenuItem<String>>((String value) {
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
                          decoration: InputDecoration(
                            labelText: 'Role',
                            border: OutlineInputBorder(),
                          ),
                        ),
                        SizedBox(height: 20),
                        Align(
                          alignment: Alignment.center,
                          child: ElevatedButton(
                            onPressed: () {
                              // Add your functionality here
                            },
                            child: Text(
                              'Save Changes',
                              style: TextStyle(fontSize: 16),
                            ),
                            style: ElevatedButton.styleFrom(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 40, vertical: 15),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        );
      },
    );
  }
}
