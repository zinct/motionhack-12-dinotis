import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:motionhack/core/constant/router.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(
          child: ElevatedButton(
            child: Text("Login"),
            onPressed: () =>
                Navigator.of(context).pushReplacementNamed(ROUTER.HOME),
          ),
        ),
      ),
    );
  }
}
