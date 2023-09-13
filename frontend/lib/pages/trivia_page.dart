import 'package:flutter/material.dart';

class TriviaPage extends StatelessWidget {
  const TriviaPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Trivia Page"),
      ),
      body: const Text("This is the trivia page"),
    );
  }
}
