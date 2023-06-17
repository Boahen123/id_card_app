import 'package:flutter/material.dart';
import "package:simple_icons/simple_icons.dart";

void main() {
  runApp(const IDcard());
}

List<Widget> columnChildren = [
  const Center(
    child: CircleAvatar(
      backgroundImage: AssetImage('assets/papakofi.jpg'),
      radius: 50.0,
    ),
  ),
  const SizedBox(
    height: 10.0,
  ),
  const Divider(
    height: 20.0,
    thickness: 1.0,
    color: Colors.grey,
  ),
  const SizedBox(
    height: 10.0,
  ),
  const Text('NAME:',
      style: TextStyle(
        color: Colors.black87,
        letterSpacing: 2.0,
        fontSize: 16.0,
        fontWeight: FontWeight.bold,
      )),
  const SizedBox(
    height: 10.0,
  ),
  const Text(
    'Papa Kofi Boahen',
    style: TextStyle(
      color: Colors.black87,
      letterSpacing: 2.0,
      fontSize: 30.0,
      fontWeight: FontWeight.bold,
    ),
  ),
  const SizedBox(
    height: 20.0,
  ),
  const Row(
    children: <Widget>[
      Icon(
        Icons.email,
        color: Colors.black87,
      ),
      SizedBox(
        width: 10.0,
      ),
      Text('papakofiboahen@gmail.com', style: TextStyle(fontSize: 20.0)),
    ],
  ),
  const SizedBox(height: 10.0),
  const Row(
    children: <Widget>[
      Icon(
        SimpleIcons.github,
        color: Colors.black87,
      ),
      SizedBox(
        width: 10.0,
      ),
      Text('Boahen123', style: TextStyle(fontSize: 20.0)),
    ],
  ),
  const SizedBox(height: 10.0),
  const Row(
    children: <Widget>[
      Icon(
        SimpleIcons.linkedin,
        color: Colors.black87,
      ),
      SizedBox(
        width: 10.0,
      ),
      Text('Papa Kofi Boahen', style: TextStyle(fontSize: 20.0)),
    ],
  ),
];

class IDcard extends StatelessWidget {
  const IDcard({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.grey[400],
        appBar: AppBar(
          title: const Text('Identity Card', style: TextStyle(fontSize: 25.0)),
          centerTitle: true,
          backgroundColor: Colors.black87,
          elevation: 0.0,
        ),
        body: Container(
          padding: const EdgeInsets.fromLTRB(40.0, 50.0, 30.0, 0.0),
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: columnChildren),
        ),
      ),
    );
  }
}
