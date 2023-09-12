import 'package:flutter/material.dart';

class SignInForm extends StatelessWidget {
  const SignInForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(30.0),
      child: Column(
        children: [
          const TextField(
            decoration: InputDecoration(
              hintText: "Email",
              icon: Icon(Icons.email),
            ),
          ),
          const SizedBox(height: 10),
          const TextField(
            decoration: InputDecoration(
              hintText: "Password",
              icon: Icon(Icons.lock),
            ),
            obscureText: true,
          ),
          const SizedBox(height: 25),
          ElevatedButton(
            onPressed: () {
              Navigator.pushNamed(context, "/trivia");
              // Add your sign-in logic here
            },
            child: const Text("Sign In"),
          ),
        ],
      ),
    );
  }
}