import 'package:flutter/material.dart';
import 'package:frontend/api/api_service.dart';
import 'package:frontend/types/types.dart';
import 'package:provider/provider.dart';
import 'package:frontend/context/app_start.dart'; // Import your AppState class

class ContinuePage extends StatelessWidget {
  const ContinuePage({Key? key});

  @override
  Widget build(BuildContext context) {
    final appState = context.watch<AppState>();
    final answers = appState.answers;
    int correctAnswersCount = answers.where((answer) => answer == 1).length;
    final UserResponse? user = appState.user;

    void postTriviaFunction() async {
      try {
        if (user != null) {
          final ApiService api = ApiService.getApi();
          await api.postTrivia(
              TriviaRequest(score: correctAnswersCount.toString()), user.token);
          Navigator.pushNamed(context, "/");
          appState.gameFinished();
        }
      } catch (e) {
        print(e);
      }
    }

    return Consumer<AppState>(
      builder: (context, appState, _) {
        return Column(
          children: [
            const SizedBox(
              height: 10,
            ),
            InkWell(
              onTap: postTriviaFunction,
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.green, // Border color
                    width: 2.0, // Border width
                  ),
                  borderRadius: BorderRadius.circular(8.0), // Border radius
                  color: Colors.white, // Background color
                ),
                padding: const EdgeInsets.symmetric(
                    vertical: 10, horizontal: 20), // Padding around the text
                child: const Text(
                  "Continue",
                  style: TextStyle(
                    color: Colors.green, // Text color
                    fontSize: 18.0, // Text font size
                    fontWeight: FontWeight.bold, // Text font weight
                  ),
                ),
              ),
            ),
          ],
        );
      },
    );
  }
}
