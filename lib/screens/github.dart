import 'package:flutter/material.dart';
import "package:simple_icons/simple_icons.dart";
import 'package:qr_flutter/qr_flutter.dart';

class GitHub extends StatefulWidget {
  const GitHub({super.key});

  @override
  State<GitHub> createState() => _GitHubState();
}

class _GitHubState extends State<GitHub> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black87,
          title: const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text('GitHub'),
              SizedBox(width: 10.0),
              Icon(
                SimpleIcons.github,
                color: Colors.white,
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
          const Text('to view my GitHub profile',
              style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              )),
          const SizedBox(
            height: 10.0,
          ),
          QrImageView(
            data: 'https://github.com/Boahen123',
            version: QrVersions.auto,
            size: 300,
            gapless: false,
            embeddedImage: const AssetImage('assets/git.webp'),
            embeddedImageStyle: const QrEmbeddedImageStyle(
              size: Size(40, 40),
            ),
          )
        ])));
  }
}
