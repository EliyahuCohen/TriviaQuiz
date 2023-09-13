import 'package:flutter/material.dart';
import 'package:frontend/api/api_service.dart';
import 'package:frontend/types/types.dart';

class SignInForm extends StatefulWidget {
  const SignInForm({Key? key}) : super(key: key);

  @override
  _SignInFormState createState() => _SignInFormState();
}

class _SignInFormState extends State<SignInForm> {
  bool isError = false;
  String errorMessage = "";
  late UserResponse? user;
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final api = ApiService.getApi();

  login() async {
    try {
      await api.login(LoginRequest(
          email: emailController.text, password: passwordController.text));
      Navigator.pushNamed(context, "/trivia");
      setState(() {
        isError = false;
      });
    } catch (e) {
      setState(() {
        isError = true;
        errorMessage = "error while fetching from the API";
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(30.0),
      child: Column(
        children: [
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
          const SizedBox(height: 25),
          InkWell(
            onTap: () {
              if (emailController.text.length > 9 &&
                  passwordController.text.length > 3) {
                login();
              } else {
                setState(() {
                  isError = true;
                  if (emailController.text.length < 10) {
                    errorMessage = "email must be at least 10 characters long";
                  } else if (passwordController.text.length < 4) {
                    errorMessage =
                        "password must be at least 4 characters long";
                  }
                });
              }
              //handling error
            },
            child: Container(
                color: Colors.amber[500],
                padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                child: const Text(
                  "Sign In",
                  style: TextStyle(color: Colors.white),
                )),
          ),
          isError
              ? Text(
                  errorMessage,
                  style:
                      const TextStyle(color: Colors.red, fontWeight: FontWeight.bold),
                )
              : const Text(""),
        ],
      ),
    );
  }

  @override
  void dispose() {
    // Dispose of the controllers to prevent memory leaks
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }
}
