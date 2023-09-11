import 'package:flutter/material.dart';
import 'package:frontend/pages/signin_page.dart';
import 'package:frontend/pages/signup.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SignInPage(),
      routes: {},
    );
  }
}
