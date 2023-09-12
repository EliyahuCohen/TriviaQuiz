import 'package:flutter/material.dart';
import 'package:frontend/pages/login_page.dart';
import 'package:frontend/pages/trivia_page.dart';
import 'package:lottie/lottie.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController usernameController = TextEditingController();

  void _handleSignUp() {
    // Implement your sign-up logic here
    // You can access the input values using emailController.text, passwordController.text, usernameController.text
    // Once sign-up is successful, navigate to the next widget


    //check if all input fields are correct and email is not already being used
    Navigator.of(context).pushReplacement(
      MaterialPageRoute(
        builder: (context) => const TriviaPage(), // Replace with the next widget you want to navigate to
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Sign Up"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(40.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Lottie.network("https://lottie.host/9314e067-91c2-427a-97e3-d1f58ff843e3/VKEpgV3sD8.json", width: 400),
              TextField(
                controller: emailController,
                decoration: const InputDecoration(
                  hintText: "Email",
                  icon: Icon(Icons.email),
                ),
              ),
              const SizedBox(height: 10),
              TextField(
                controller: passwordController,
                decoration: const InputDecoration(
                  hintText: "Password",
                  icon: Icon(Icons.lock),
                ),
                obscureText: true,
              ),
              const SizedBox(height: 10),
              TextField(
                controller: usernameController,
                decoration: const InputDecoration(
                  hintText: "Username",
                  icon: Icon(Icons.person),
                ),
              ),
              const SizedBox(height: 40),
              ElevatedButton(
                onPressed: _handleSignUp,
                child: const Text("Sign Up"),
              ),
              const SizedBox(height: 10),
              GestureDetector(
                onTap: () {
                  // Navigate to the login page
                  Navigator.of(context).pushReplacement(
                    MaterialPageRoute(
                      builder: (context) => const LoginPage(), // Replace with your login page widget
                    ),
                  );
                },
                child: const Text(
                  "Already have an existing account?",
                  style: TextStyle(
                    fontSize: 12,
                    color: Colors.blue, // You can choose any color you prefer
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
