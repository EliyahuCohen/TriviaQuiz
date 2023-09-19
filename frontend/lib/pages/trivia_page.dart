import 'package:flutter/material.dart';
import 'package:frontend/api/api_service.dart';
import 'package:frontend/context/app_start.dart';
import 'package:frontend/models/quiz_question.dart';
import 'package:frontend/widgets/question_card.dart';
import 'package:provider/provider.dart';

class TriviaPage extends StatefulWidget {
  const TriviaPage({Key? key}) : super(key: key);

  @override
  State<TriviaPage> createState() => _TriviaPageState();
}

class _TriviaPageState extends State<TriviaPage> {
  List<int> list = [-1, -1, -1, -1, -1];
  late Future<List<QuizQuestion>> _questionsFuture;
  late AppState app;
  List<QuizQuestion>? questions;

  @override
  void initState() {
    super.initState();
    final apiService = ApiService.getApi();
    final appState = context.read<AppState>();
    app = appState;
    if (appState.user != null) {
      _questionsFuture = apiService.getQuestions(appState.user!.token);
    }
  }

  void checkAnswer(QuizQuestion question, int questionIndex, int answerIndex) {
    int correctValue = 0;
    if (question.incorrect_answers[answerIndex] == question.correct_answer) {
      correctValue = 1;
    }
    setState(() {
      list[questionIndex] = correctValue;
    });
    app.setAnswers(list);
  }

  @override
  Widget build(BuildContext context) {
    bool allQuestionsAnswered = list.every((answer) => answer != -1);

    return Scaffold(
      appBar: AppBar(
        title: const Text("Trivia Page"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            FutureBuilder<List<QuizQuestion>>(
              future: _questionsFuture,
              builder: (context, snapshot) {
                if (snapshot.connectionState == ConnectionState.waiting) {
                  return const CircularProgressIndicator();
                } else if (snapshot.hasError) {
                  return Text('Error: ${snapshot.error}');
                } else if (!snapshot.hasData || snapshot.data == null) {
                  return const Text('No questions available.');
                } else {
                  // Filter out questions with null or invalid data
                  questions = snapshot.data!.where((question) {
                    return question.incorrect_answers != null;
                  }).toList();

                  return ListView.builder(
                    physics:
                        NeverScrollableScrollPhysics(), // Prevent scrolling
                    shrinkWrap: true,
                    itemCount: questions?.length,
                    itemBuilder: (context, index) {
                      final question = questions![index];
                      return QuestionCard(
                        question: question,
                        index: index,
                        selectFunction: checkAnswer,
                      );
                    },
                  );
                }
              },
            ),
            SizedBox(
                height:
                    16.0), // Add some spacing between the ListView and the bottomNavigationBar
          ],
        ),
      ),
      bottomNavigationBar: allQuestionsAnswered && questions != null
          ? Container(
              color: Colors.amber[200],
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: GestureDetector(
                onTap: () {
                  app.setQuestions(questions!);
                  Navigator.pushNamed(context, "/score");
                },
                child: const Text("Move To Results"),
              ),
            )
          : Container(
              color: Colors.red[200],
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: const Text(
                "Please answer all questions to proceed.",
                style: TextStyle(color: Colors.white),
                textAlign: TextAlign.center,
              ),
            ),
    );
  }
}
