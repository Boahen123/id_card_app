import 'package:flutter/material.dart';
import 'package:logger/logger.dart';
import 'package:id_card_app/screens/loading_screen.dart';
import 'package:id_card_app/screens/home.dart';
import 'package:id_card_app/screens/github.dart';
import 'package:id_card_app/screens/linkedin.dart';
import 'package:id_card_app/screens/email.dart';

void main() {
  // Define your named routes
  final Map<String, Widget Function(BuildContext)> routes =
      <String, WidgetBuilder>{
    '/': (BuildContext context) => const LoadingScreen(),
    '/home': (BuildContext context) => const IDcard(),
    '/github': (BuildContext context) => const GitHub(),
    '/linkedin': (BuildContext context) => const LinkedIn(),
    '/email': (BuildContext context) => const Email(),
  };

  runApp(MaterialApp(
    initialRoute: '/',
    routes: routes,
  ));
}

var console = Logger();
