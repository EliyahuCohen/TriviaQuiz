import 'package:flutter/material.dart';

class ScoreSummary extends StatelessWidget {
  final int correctAnswersCount;
  final int totalQuestions;

  const ScoreSummary({super.key, 
    required this.correctAnswersCount,
    required this.totalQuestions,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            "Correct Answers:",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          Text(
            "$correctAnswersCount out of $totalQuestions",
            style: const TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}
