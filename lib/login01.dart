import 'package:flutter/material.dart';

class login01 extends StatefulWidget {
  const login01({super.key});

  @override
  State<login01> createState() => _login01State();
}

class _login01State extends State<login01> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body: Column(
        children: [
          Image.asset("android/assets/images/quiz-logo.png"),
        ],
      ),
    );
  }
}
