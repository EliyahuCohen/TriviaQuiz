import 'package:flutter/material.dart';
import 'package:frontend/context/app_start.dart';
import 'package:provider/provider.dart';

class LogoutButton extends StatelessWidget {
  const LogoutButton({super.key});

  @override
  Widget build(BuildContext context) {
    final user = Provider.of<AppState>(context);
    void logout() {
      user.logout();
    }

    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: <Widget>[
        ElevatedButton(
          onPressed: logout,
          child: const Text('Logout'),
        ),
        const SizedBox(
          height: 30,
        )
      ],
    );
  }
}
