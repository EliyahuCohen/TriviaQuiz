import 'package:flutter/material.dart';
import 'package:frontend/api/api_service.dart';
import 'package:frontend/pages/login_page.dart';
import 'package:frontend/types/types.dart';
import 'package:lottie/lottie.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  bool isError = false;
  String errorMessage = "";
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController usernameController = TextEditingController();

  void _handleSignUp() async {
    try {
      setState(() {
        isError = false;
        errorMessage = "";
      });
      if (emailController.text.length < 10) {
        setState(() {
          isError = true;
          errorMessage = "Invalid email (must be at least 10 characters)";
        });
        return;
      }
      if (passwordController.text.length < 4) {
        setState(() {
          isError = true;
          errorMessage = "Password must be at least 4 characters";
        });
        return;
      }
      if (usernameController.text.isEmpty) {
        setState(() {
          isError = true;
          errorMessage = "Invalid Username";
        });
        return;
      }
      final api = ApiService.getApi();
      await api.signup(SignUpRequest(
          username: usernameController.text,
          email: emailController.text,
          password: passwordController.text));

      // Navigate to the login page if signup is successful
      Navigator.pushNamed(context, "/login");
    } catch (e) {
      if (e.toString().contains("Email is already in use")) {
        setState(() {
          errorMessage = "Email is already in use";
        });
      } else {
        Navigator.pushNamed(context, "/");
      }
      setState(() {
        isError = true;
      });
    }
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
              Lottie.network(
                  "https://lottie.host/9314e067-91c2-427a-97e3-d1f58ff843e3/VKEpgV3sD8.json",
                  width: 400,
                  height: 350),
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
                      builder: (context) =>
                          const LoginPage(), // Replace with your login page widget
                    ),
                  );
                },
                child: const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    "Already have an existing account?",
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.blue, // You can choose any color you prefer
                    ),
                  ),
                ),
              ),
              isError
                  ? Text(
                      errorMessage,
                      style: const TextStyle(
                          fontSize: 12,
                          color: Colors.red,
                          fontWeight: FontWeight.bold),
                    )
                  : const Text(""),
            ],
          ),
        ),
      ),
    );
  }
}
