import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class LoadingScreen extends StatefulWidget {
  const LoadingScreen({super.key});

  @override
  State<LoadingScreen> createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {
  var duration = const Duration(seconds: 2);

  void enterHome() {
    Future.delayed(duration, () {
      Navigator.pushReplacementNamed(context, '/home');
    });
  }

  @override
  void initState() {
    super.initState();
    enterHome();
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.black26,
      body: Center(
        child: SpinKitFadingCube(
          color: Colors.white,
          size: 50.0,
        ),
      ),
    );
  }
}
