import 'package:flutter/material.dart';

class Email extends StatefulWidget {
  const Email({super.key});

  @override
  State<Email> createState() => _EmailState();
}

class _EmailState extends State<Email> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            backgroundColor: Colors.black87,
            centerTitle: true,
            title: const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text('Email'),
                SizedBox(width: 10.0),
                Icon(
                  Icons.email,
                  color: Colors.white,
                  size: 30.0,
                ),
              ],
            )),
        body: const Center(
          child: Text('Email QR Code'),
        ));
  }
}
