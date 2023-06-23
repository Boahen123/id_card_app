import 'package:flutter/material.dart';
import "package:simple_icons/simple_icons.dart";
import 'package:qr_flutter/qr_flutter.dart';

class Whatsapp extends StatefulWidget {
  const Whatsapp({super.key});

  @override
  State<Whatsapp> createState() => _WhatsappState();
}

class _WhatsappState extends State<Whatsapp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black87,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const Text('WhatsApp'),
              const SizedBox(width: 10.0),
              Icon(
                SimpleIcons.whatsapp,
                color: Colors.green[600],
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
          const Text('to add me as WhatsApp contact',
              style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              )),
          const SizedBox(
            height: 5.0,
          ),
          QrImageView(
            data: 'https://wa.me/qr/OSB42QNY2N6JC1',
            version: QrVersions.auto,
            size: 300,
            gapless: false,
            embeddedImage: const AssetImage('assets/whatsapp2.png'),
            embeddedImageStyle: const QrEmbeddedImageStyle(
              size: Size(40, 40),
            ),
          )
        ])));
  }
}
