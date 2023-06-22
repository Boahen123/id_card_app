import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';

class Email extends StatefulWidget {
  const Email({super.key});

  @override
  State<Email> createState() => _EmailState();
}

class _EmailState extends State<Email> {
  final gmailUri = Uri(
      scheme: 'mailto',
      path: 'papakofiboahen@gmail.com',
      queryParameters: {'subject': 'Name: ', 'body': 'Hello, Papa Kofi'});

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
        body: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Scan the QR Code',
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                )),
            const Text('to send an email',
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                )),
            const SizedBox(
              height: 10.0,
            ),
            QrImageView(
              data: '$gmailUri',
              version: QrVersions.auto,
              size: 300,
              gapless: false,
              embeddedImage: const AssetImage('assets/gmail.png'),
              embeddedImageStyle: const QrEmbeddedImageStyle(
                size: Size(40, 40),
              ),
            )
          ],
        )));
  }
}
