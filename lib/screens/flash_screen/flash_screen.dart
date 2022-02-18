import 'dart:async';
import 'package:agro_exam/core/constants/constants.dart';
import 'package:agro_exam/screens/login_screen/login_screen.dart';
import 'package:flutter/material.dart';

class First extends StatefulWidget {
  const First({Key? key}) : super(key: key);

  @override
  _FirstState createState() => _FirstState();
}

class _FirstState extends State<First> {
  @override
  void initState() {
    super.initState();
    Timer(
      const Duration(seconds: 2),
      () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => const Login_screen(),
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Kprimary.kPrimaryColor,
        child: Center(
          child: Image.asset("assets/images/splash_screen.png"),
        ),
      ),
    );
  }

}
