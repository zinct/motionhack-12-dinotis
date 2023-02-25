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
    await Future.delayed(Duration(seconds: 3));
    Navigator.of(context).pushReplacementNamed(ROUTER.ONBOARDING_ONE);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF8900FF),
      body: Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(
                'assets/images/splash.png',
                height: 400,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
