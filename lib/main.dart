import 'package:flutter/material.dart';

void main() {
  runApp(const IDcard());
}

class IDcard extends StatelessWidget {
  const IDcard({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blueGrey,
        body: Center(
          child: Text('Hello World'),
        ),
      ),
    );
  }
}
