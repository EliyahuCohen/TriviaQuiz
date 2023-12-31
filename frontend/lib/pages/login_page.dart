import 'package:flutter/material.dart';
import 'package:frontend/context/app_start.dart';
import 'package:frontend/widgets/main_navigation.dart';
import 'package:frontend/widgets/signin_form.dart';
import 'package:lottie/lottie.dart';
import 'package:provider/provider.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<AppState>(
      builder: (context, appState, _) {
        final user = appState;

        if (user.user != null) {
          return const MainNavigation();
        } else {
          return Scaffold(
            body: SafeArea(
              child: Center(
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Lottie.asset("lib/assets/cup.json", width: 400),
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
      },
    );
  }
}
