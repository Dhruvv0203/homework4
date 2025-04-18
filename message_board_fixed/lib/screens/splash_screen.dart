import 'dart:async';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'home_screen.dart';
import 'login_screen.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 2), () {
      User? user = FirebaseAuth.instance.currentUser;
      Navigator.pushReplacement(context,
        MaterialPageRoute(builder: (_) => user != null ? HomeScreen() : LoginScreen()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(mainAxisSize: MainAxisSize.min, children: [
          Icon(Icons.message, size: 80),
          SizedBox(height: 20),
          Text("Message Board", style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold))
        ]),
      ),
    );
  }
}
