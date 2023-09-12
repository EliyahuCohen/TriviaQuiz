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
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Lottie.network(
                    "https://lottie.host/31da7a02-9525-4718-8e61-bcf5ab6047e9/6GA9ncTR8W.json"),
                SizedBox(height: 20),
                SignInForm(), // Custom SignInForm widget for email and password fields
                SizedBox(height: 10),

                InkWell(
                  child: Text(
                    "Not an existing user? Sign up",
                    style: TextStyle(fontSize: 14),
                  ),
                  onTap: () => {
                    Navigator.pushNamed(context, "/signup")
                    },
                  hoverColor: Colors.transparent,
                ),
                SizedBox(height: 10),
              ],
            ),
          ),
        ),
      );
    }
  }
}
