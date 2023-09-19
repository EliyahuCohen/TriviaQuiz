import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class RulesPage extends StatelessWidget {
  const RulesPage({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Game Rules'),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Column(
          children: [
            Lottie.asset("lib/assets/law.json", width: 250),
            RuleCard(
              title: 'Objective',
              content:
                  'The objective of the game is to correctly answer all 5 multiple-choice questions to test your knowledge and proceed to the results.',
            ),
            RuleCard(
              title: 'Rules',
              content:
                  '1. Question Display: All 5 multiple-choice questions are displayed simultaneously at the beginning of the game. Players can choose the order in which they want to answer the questions.',
            ),
            RuleCard(
              title: 'Answer Format',
              content:
                  'Each question presents multiple-choice options as text. Players must select their chosen answer for each question by clicking or tapping on the text-based option.',
            ),
            // Add more RuleCard widgets for each section...
          ],
        ),
      ),
    );
  }
}

class RuleCard extends StatelessWidget {
  final String title;
  final String content;

  const RuleCard({Key? key, required this.title, required this.content})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4.0,
      margin: EdgeInsets.symmetric(vertical: 8.0),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 8.0),
            Text(
              content,
              style: TextStyle(
                fontSize: 16.0,
                letterSpacing: 0.5,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
