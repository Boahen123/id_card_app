import 'package:flutter/material.dart';
import "package:simple_icons/simple_icons.dart";
import 'package:qr_flutter/qr_flutter.dart';

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
        body: Center(
            child:
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          const Text('Scan the QR Code',
              style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              )),
          const Text('to view my LinkedIn profile',
              style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              )),
          const SizedBox(
            height: 10.0,
          ),
          QrImageView(
            data: 'https://www.linkedin.com/in/papakofiboahen',
            version: QrVersions.auto,
            size: 300,
            gapless: false,
            embeddedImage: const AssetImage('assets/likedin.png'),
            embeddedImageStyle: const QrEmbeddedImageStyle(
              size: Size(40, 40),
            ),
          )
        ])));
  }
}
