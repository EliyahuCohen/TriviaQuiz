import 'package:flutter/material.dart';
import 'package:frontend/context/app_start.dart';
import 'package:frontend/models/user.dart';
import 'package:frontend/widgets/logout_button.dart';
import 'package:provider/provider.dart';
import 'package:lottie/lottie.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile'),
      ),
      body: SingleChildScrollView(
        child: Consumer<AppState>(
          builder: (context, appState, _) {
            final user = appState.user;
            return Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                SizedBox(height: 20.0),
                Lottie.network(
                  "https://lottie.host/cfe530df-8c56-4f5c-a3ed-c67113e8f409/kO3mq4uBqB.json",
                  height: 300,
                ),
                SizedBox(height: 20.0),
                Text(
                  user?.user.username ?? 'Guest',
                  style: TextStyle(
                    fontSize: 24.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 10.0),
                Text(
                  user?.user.email ?? 'guest@example.com',
                  style: TextStyle(
                    fontSize: 16.0,
                    color: Colors.grey,
                  ),
                ),
                SizedBox(height: 30.0),
                _buildProfileInfoCard(user?.user),
                SizedBox(height: 20.0),
                LogoutButton(),
              ],
            );
          },
        ),
      ),
    );
  }

  Widget _buildProfileInfoCard(User? user) {
    return Card(
      margin: EdgeInsets.symmetric(horizontal: 20.0),
      elevation: 5.0,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              'Profile Information',
              style: TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            Divider(color: Colors.grey),
            ListTile(
              leading: Icon(Icons.email),
              title: Text('Email'),
              subtitle: Text(user?.email ?? 'guest@example.com'),
            ),
            ListTile(
              leading: Icon(Icons.games),
              title: Text('Games Played'),
              subtitle: Text("${user?.gamesPlayed ?? 0}"),
            ),
            // Add more profile information here as needed
          ],
        ),
      ),
    );
  }
}
