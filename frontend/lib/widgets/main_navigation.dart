import 'package:flutter/material.dart';
import 'package:frontend/context/app_start.dart';
import 'package:frontend/pages/history_page.dart';
import 'package:frontend/pages/profile_page.dart';
import 'package:frontend/pages/rules_page.dart';
import 'package:frontend/pages/score_page.dart';
import 'package:frontend/pages/trivia_page.dart';
import 'package:frontend/widgets/logout_button.dart';
import 'package:provider/provider.dart';

class MainNavigation extends StatelessWidget {
  const MainNavigation({super.key});

  @override
  Widget build(BuildContext context) {
    final appState = Provider.of<AppState>(context);
    final user = appState.user;

    return Scaffold(
      appBar: AppBar(
        title: Text("Hello ${user?.user.username}"),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: Text(
                'App Menu',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                ),
              ),
            ),
            ListTile(
              leading: const Icon(Icons.person),
              title: const Text('Profile'),
              onTap: () {
                Navigator.of(context).pop(); // Close the drawer
                Navigator.of(context)
                    .pushNamed('/profile'); // Navigate to the profile page
              },
            ),
            ListTile(
              leading: const Icon(Icons.history),
              title: const Text('History'),
              onTap: () {
                Navigator.of(context).pop(); // Close the drawer
                Navigator.of(context)
                    .pushNamed('/history'); // Navigate to the history page
              },
            ),
            ListTile(
              leading: const Icon(Icons.games),
              title: const Text('Trivia'),
              onTap: () {
                Navigator.of(context).pop(); // Close the drawer
                Navigator.of(context)
                    .pushNamed('/trivia'); // Navigate to the game page
              },
            ),
            const LogoutButton(),
          ],
        ),
      ),
      body: Navigator(
        // Use Navigator for the page content
        initialRoute: 'rules', // Set the initial route to '/profile'
        onGenerateRoute: (settings) {
          WidgetBuilder builder;
          switch (settings.name) {
            case 'profile':
              builder = (BuildContext context) =>
                  const ProfilePage(); // Replace with your profile page widget
              break;
            case 'history':
              builder = (BuildContext context) =>
                  const HistoryPage(); // Replace with your history page widget
              break;
            case 'trivia':
              builder = (BuildContext context) =>
                  const TriviaPage(); // Replace with your game page widget
              break;
            case 'score':
              builder = (BuildContext context) =>
                  const ScorePage(); // Replace with your game page widget
              break;
            case 'rules':
              builder = (BuildContext context) =>
                  const RulesPage(); // Replace with your game page widget
              break;
            default:
              throw Exception('Invalid route: ${settings.name}');
          }
          return MaterialPageRoute(builder: builder, settings: settings);
        },
      ),
    );
  }
}
