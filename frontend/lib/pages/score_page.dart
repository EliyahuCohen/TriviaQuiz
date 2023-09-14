import 'package:flutter/material.dart';
import 'package:frontend/widgets/continue_button.dart';
import 'package:frontend/widgets/question_list.dart';
import 'package:frontend/widgets/score_summert.dart';
import 'package:lottie/lottie.dart';
import 'package:provider/provider.dart';
import 'package:frontend/context/app_start.dart';

class ScorePage extends StatelessWidget {
  const ScorePage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final appState = context.watch<AppState>();
    final answers = appState.answers;
    int correctAnswersCount = answers.where((answer) => answer == 1).length;

    return Scaffold(
      body: Column(
        children: [
          Lottie.asset("lib/assets/cup.json", width: 100),
          ScoreSummary(
            correctAnswersCount: correctAnswersCount,
            totalQuestions: appState.answers.length,
          ),
          QuestionList(answers: answers, questions: appState.questions),
          const ContinuePage()
        ],
      ),
    );
  }
}
