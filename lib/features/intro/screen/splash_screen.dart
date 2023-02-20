import 'package:flutter/material.dart';
import 'package:motionhack/core/constant/router.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    _initSplashScreen();
  }

  void _initSplashScreen() async {
    await Future.delayed(Duration(seconds: 2));
    Navigator.of(context).pushReplacementNamed(ROUTER.LOGIN);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(
          child: Text("Splash Screen"),
        ),
      ),
    );
  }
}
