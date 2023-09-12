import 'package:flutter/material.dart';
import 'package:frontend/context/app_start.dart';
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
      return const Scaffold(
        body: Column(
          children: [
            Text("You Not Good"),
          ],
        ),
      );
    }
  }
}
