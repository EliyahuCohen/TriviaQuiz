import 'package:flutter/material.dart';

class SignInForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(30.0),
      child: Column(
        children: [
          TextField(
            decoration: InputDecoration(
              hintText: "Email",
              icon: Icon(Icons.email),
            ),
          ),
          SizedBox(height: 10),
          TextField(
            decoration: InputDecoration(
              hintText: "Password",
              icon: Icon(Icons.lock),
            ),
            obscureText: true,
          ),
          SizedBox(height: 25),
          ElevatedButton(
            onPressed: () {
              Navigator.pushNamed(context, "/trivia");
              // Add your sign-in logic here
            },
            child: Text("Sign In"),
          ),
        ],
      ),
    );
  }
}