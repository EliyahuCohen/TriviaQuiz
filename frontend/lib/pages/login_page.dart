import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:frontend/api/api_service.dart';
import 'package:frontend/context/app_start.dart';
import 'package:frontend/models/user.dart';
import 'package:provider/provider.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    final appState = Provider.of<AppState>(context);
    final ApiService apiService =
        ApiService(Dio(), baseUrl: "http://localhost:3000");
    final user = appState;

    if (user.user != null) {
      return const Scaffold(
        body: Text("You Good"),
      );
    } else {
      return Scaffold(
        body: Column(
          children: [
            const Text("You Not Good"),
            InkWell(
              child: const Text("Press"),
              onTap: () async {
                //making the api request to login
              },
            )
          ],
        ),
      );
    }
  }
}
