import 'package:flutter/material.dart';
import 'package:frontend/api/api_service.dart';
import 'package:frontend/context/app_start.dart';
import 'package:frontend/models/quiz_question.dart';
import 'package:provider/provider.dart';

class TriviaPage extends StatelessWidget {
  const TriviaPage({super.key, Key? pkey});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Trivia Page"),
      ),
      body: Consumer<AppState>(
        builder: (context, appState, child) {
          final apiService = ApiService.getApi();

          return FutureBuilder<List<QuizQuestion>>(
            future: apiService.getQuestions(appState.user!.token),
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.waiting) {
                return const CircularProgressIndicator();
              } else if (snapshot.hasError) {
                return Text('Error: ${snapshot.error}');
              } else {
                final questions = snapshot.data ?? [];
                return ListView.builder(
                  itemCount: questions.length,
                  itemBuilder: (context, index) {
                    final question = questions[index];
                    return ListTile(
                      title: Text(question.question),
                      // Display other question details here as needed
                    );
                  },
                );
              }
            },
          );
        },
      ),
    );
  }
}
