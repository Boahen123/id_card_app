import 'package:flutter/material.dart';

void main() {
  runApp(const IDcard());
}

List<Widget> columnChildren = [
  const Text('NAME',
      style: TextStyle(
        color: Colors.black87,
        letterSpacing: 2.0,
        fontSize: 16.0,
        fontWeight: FontWeight.bold,
      )),
  const Text('Papa Kofi Boahen',
      style: TextStyle(
        color: Colors.black87,
        letterSpacing: 2.0,
        fontSize: 20.0,
        fontWeight: FontWeight.bold,
      )),
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
          padding: const EdgeInsets.fromLTRB(30.0, 40.0, 30.0, 0.0),
          child: Column(children: columnChildren),
        ),
      ),
    );
  }
}
