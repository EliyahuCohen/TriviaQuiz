import 'package:flutter/material.dart';
import 'package:frontend/context/app_start.dart';
import 'package:frontend/widgets/signin_form.dart';
import 'package:lottie/lottie.dart';
import 'package:provider/provider.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    final appState = Provider.of<AppState>(context);
    final user = appState;

    if (user.user != null) {
      return const Scaffold(
        body: Text("You Good"),
      );
    } else {
      return Scaffold(
        body: SafeArea(
          child: Center(
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Lottie.network(
                      "https://lottie.host/31da7a02-9525-4718-8e61-bcf5ab6047e9/6GA9ncTR8W.json",
                      width: 400),
                  const SizedBox(height: 20),
                  const SignInForm(), // Custom SignInForm widget for email and password fields
                  const SizedBox(height: 10),

                  InkWell(
                    onTap: () => {Navigator.pushNamed(context, "/signup")},
                    child: const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        "Not an existing user? Sign up",
                        style: TextStyle(
                          fontSize: 14,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 10),
                ],
              ),
            ),
          ),
        ),
      );
    }
  }
}
