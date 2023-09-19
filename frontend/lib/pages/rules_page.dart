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
            const Text(
              // Replace this with your game rules or any long text.
            """
Objective:
The objective of the game is to correctly answer all 5 multiple-choice questions to test your knowledge and proceed to the results.

Rules:

1. Question Display:
   - All 5 multiple-choice questions are displayed simultaneously at the beginning of the game.
   - Players can choose the order in which they want to answer the questions.

2. Answer Format:
   - Each question presents multiple-choice options as text.
   - Players must select their chosen answer for each question by clicking or tapping on the text-based option.

3. Answer Validation:
   - Answers are not checked immediately after selecting them.
   - Players can answer the questions in any order they prefer.

4. Continue to Results:
   - To see the results of the quiz, players must press the "Continue" button after answering all 5 questions or when they are ready to proceed.
   - At this point, the game will validate the answers provided.

5. Correct Answers:
   - Players need to provide the correct answer for each of the 5 questions to proceed to the results.
   - Correct answers are based on predetermined correct choices for each question.

6. Incorrect Answers:
   - If a player has provided incorrect answers to any of the questions, they will receive a notification that one or more answers are wrong.
   - Players can review their answers and make changes if needed before continuing.

7. Results Display:
   - After pressing "Continue," players will see the results of the quiz.
   - The results will provide feedback on how many questions were answered correctly out of the total 5.

8. Winning and Scoring:
   - Players "win" the game by correctly answering all 5 questions and proceeding to the results.
   - The game does not have a cumulative score. Success is determined by answering all questions correctly.

9. Restart Option:
   - After viewing the results, players can choose to restart and play the trivia challenge again.

10. Fair Play:
    - Players are encouraged to play fairly and not use external sources for answers.
"""
,
              style: TextStyle(
                fontSize: 16.0,
                letterSpacing: 3.0, // Adjust the letter spacing as needed.
              ),
            ),
          ],
        ),
      ),
    );
  }
}
