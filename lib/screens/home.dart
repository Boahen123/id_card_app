import 'package:flutter/material.dart';
import 'package:id_card_app/screens/github.dart';
import 'package:id_card_app/screens/linked_in.dart';
import 'package:id_card_app/screens/whatsapp.dart';
import "package:simple_icons/simple_icons.dart";
import 'package:page_transition/page_transition.dart';
import 'package:id_card_app/screens/email.dart';
import 'package:url_launcher/url_launcher.dart';

List<Widget> columnChildren = [
  const SizedBox(
    height: 10.0,
  ),
  const Divider(
    height: 20.0,
    thickness: 2.0,
    color: Colors.grey,
  ),
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
    height: 10.0,
  )
];

class IDcard extends StatefulWidget {
  const IDcard({super.key});

  @override
  State<IDcard> createState() => _IDcardState();
}

class _IDcardState extends State<IDcard> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.grey[400],
        appBar: AppBar(
          title: const Text('Contact Info', style: TextStyle(fontSize: 25.0)),
          centerTitle: true,
          backgroundColor: Colors.black87,
          elevation: 0.0,
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        body: Container(
          padding: const EdgeInsets.fromLTRB(40.0, 50.0, 30.0, 0.0),
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                const Center(
                  child: CircleAvatar(
                    backgroundImage: AssetImage('assets/papakofi.jpg'),
                    radius: 60.0,
                  ),
                ),
                ...columnChildren,
                Row(children: <Widget>[
                  IconButton(
                    onPressed: () async {
                      var url = Uri.https('github.com', '/Boahen123');
                      if (await canLaunchUrl(url)) {
                        await launchUrl(url);
                      }
                    },
                    icon: const Icon(
                      SimpleIcons.github,
                      color: Colors.black87,
                    ),
                    alignment: Alignment.centerLeft,
                  ),
                  TextButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          PageTransition(
                            type: PageTransitionType.fade,
                            child: const GitHub(),
                          ),
                        );
                      },
                      child: const Text('Boahen123',
                          style:
                              TextStyle(fontSize: 20.0, color: Colors.black87)))
                ]),
                Row(
                  children: [
                    IconButton(
                      onPressed: () async {
                        var url =
                            Uri.https('linkedin.com', '/in/papakofiboahen');
                        if (await canLaunchUrl(url)) {
                          await launchUrl(url);
                        }
                      },
                      icon: const Icon(
                        SimpleIcons.linkedin,
                        color: Colors.blue,
                        size: 25.0,
                      ),
                      alignment: Alignment.centerLeft,
                    ),
                    TextButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            PageTransition(
                              type: PageTransitionType.fade,
                              child: const LinkedIn(),
                            ),
                          );
                        },
                        child: const Text('Papa Kofi Boahen',
                            style: TextStyle(
                                fontSize: 20.0, color: Colors.black87))),
                  ],
                ),
                TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      PageTransition(
                        type: PageTransitionType.fade,
                        child: const Email(),
                      ),
                    );
                  },
                  child: const Row(
                    children: <Widget>[
                      Icon(
                        Icons.email,
                        color: Colors.black87,
                      ),
                      SizedBox(
                        width: 10.0,
                      ),
                      Text('papakofiboahen@gmail.com',
                          style:
                              TextStyle(fontSize: 20.0, color: Colors.black87)),
                    ],
                  ),
                ),
                Row(
                  children: [
                    IconButton(
                      onPressed: () async {
                        var url = Uri.https('wa.me', '/qr/OSB42QNY2N6JC1');
                        if (await canLaunchUrl(url)) {
                          await launchUrl(url);
                        }
                      },
                      icon: Icon(
                        SimpleIcons.whatsapp,
                        color: Colors.green[600],
                        size: 25.0,
                      ),
                      alignment: Alignment.centerLeft,
                    ),
                    TextButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            PageTransition(
                              type: PageTransitionType.fade,
                              child: const Whatsapp(),
                            ),
                          );
                        },
                        child: const Text('+233 50 323 0804',
                            style: TextStyle(
                                fontSize: 20.0, color: Colors.black87))),
                  ],
                ),
              ]),
        ),
      ),
    );
  }
}
