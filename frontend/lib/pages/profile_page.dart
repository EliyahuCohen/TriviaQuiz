import 'package:flutter/material.dart';
import 'package:frontend/context/app_start.dart';
import 'package:frontend/models/user.dart';
import 'package:frontend/widgets/logout_button.dart';
import 'package:provider/provider.dart';
import 'package:lottie/lottie.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile'),
      ),
      body: SingleChildScrollView(
        child: Consumer<AppState>(
          builder: (context, appState, _) {
            final user = appState.user;
            return Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                const SizedBox(height: 20.0),
                Lottie.asset(
                  "lib/assets/user.json",
                  height: 300,
                ),
                const SizedBox(height: 20.0),
                Text(
                  user?.user.username ?? 'Guest',
                  style: const TextStyle(
                    fontSize: 24.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 10.0),
                Text(
                  user?.user.email ?? 'guest@example.com',
                  style: const TextStyle(
                    fontSize: 16.0,
                    color: Colors.grey,
                  ),
                ),
                const SizedBox(height: 30.0),
                _buildProfileInfoCard(user?.user),
                const SizedBox(height: 20.0),
                const LogoutButton(),
              ],
            );
          },
        ),
      ),
    );
  }

  Widget _buildProfileInfoCard(User? user) {
    return Card(
      margin: const EdgeInsets.symmetric(horizontal: 20.0),
      elevation: 5.0,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            const Text(
              'Profile Information',
              style: TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            const Divider(color: Colors.grey),
            ListTile(
              leading: const Icon(Icons.email),
              title: const Text('Email'),
              subtitle: Text(user?.email ?? 'guest@example.com'),
            ),
            ListTile(
              leading: const Icon(Icons.games),
              title: const Text('Games Played'),
              subtitle: Text("${user?.gamesPlayed ?? 0}"),
            ),
            // Add more profile information here as needed
          ],
        ),
      ),
    );
  }
}
