import 'package:flutter/material.dart';
import "package:simple_icons/simple_icons.dart";

class LinkedIn extends StatefulWidget {
  const LinkedIn({super.key});

  @override
  State<LinkedIn> createState() => _LinkedInState();
}

class _LinkedInState extends State<LinkedIn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black87,
          title: const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text('LinkedIn'),
              SizedBox(width: 10.0),
              Icon(
                SimpleIcons.linkedin,
                color: Colors.blue,
                size: 30.0,
              ),
            ],
          ),
          centerTitle: true,
        ),
        body: const Center(
          child: Text('LinkedIn QR Code'),
        ));
  }
}
