import 'package:flutter/material.dart';

final List<String> list = [
  'All Users',
  'Custormer',
  'Delivery Guys',
  'Staff',
  'Stores Owners'
];

final List<String> role = [
  'Admin',
  'Staff',
  'Stores Owners',
  'Custormer',
  'Delivery Guys'
];

var allUsersTile = ExpansionTile(
  title: const Padding(
    padding: EdgeInsets.only(left: 20.0),
    child: Text(
      'U S E R S',
      style: TextStyle(fontWeight: FontWeight.bold),
    ),
  ),
  leading: const Icon(
    Icons.person_2_sharp,
  ),
  children: [
    Wrap(
      children: [
        for (var i in list)
          Container(
              // width: double.infinity,
              height: 50.0,
              child: GestureDetector(
                onTap: () {
                  // Navigator.push(
                  //     context,
                  //     MaterialPageRoute(
                  //         builder: (context) => BasedOnCats(i.toString())));
                },
                child: Center(
                  child: Text(i.toString(),
                      style: const TextStyle(fontWeight: FontWeight.bold)),
                ),
              ))
      ],
    ),
  ],
);
