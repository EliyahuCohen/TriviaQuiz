import 'package:flutter/material.dart';
import 'package:frontend/models/quiz_question.dart';

class QuestionList extends StatelessWidget {
  final List<int> answers;
  final List<QuizQuestion> questions;

  const QuestionList({super.key, required this.answers, required this.questions});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemCount: questions.length,
        itemBuilder: (context, index) {
          final question = questions[index];
          final isCorrect = answers[index] == 1;

          return Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  (index + 1).toString(),
                  style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Container(
                  // Use conditional statement to change the background color
                  color: Colors.white, // Always set to white
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        question.question,
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: isCorrect ? Colors.green : Colors.black,
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      ListView.builder(
                        shrinkWrap: true,
                        itemCount: question.incorrect_answers.length,
                        itemBuilder: (BuildContext context, int i) {
                          final isCorrectAnswer =
                              question.incorrect_answers[i] ==
                                  question.correct_answer;
                          final isSelectedAnswer =
                              answers[index] == i && !isCorrect;

                          return Container(
                            margin: const EdgeInsets.only(top: 5),
                            width: double.maxFinite,
                            decoration: BoxDecoration(
                              color: isSelectedAnswer
                                  ? Colors.red.withOpacity(0.2)
                                  : isCorrect
                                      ? isCorrectAnswer
                                          ? Colors.green
                                          : Colors.white
                                      : Colors.red.withOpacity(0.2),
                              border: Border.all(color: Colors.black),
                            ),
                            padding: const EdgeInsets.symmetric(
                                vertical: 20, horizontal: 10),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  question.incorrect_answers[i],
                                  style: TextStyle(
                                    color: isCorrect
                                        ? isCorrectAnswer
                                            ? Colors.white
                                            : Colors.black
                                        : Colors.black,
                                    fontSize: 15,
                                  ),
                                ),
                              ],
                            ),
                          );
                        },
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      if (!isCorrect)
                        Container(
                          // Show the correct answer for wrong answers
                          margin: const EdgeInsets.only(top: 5),
                          child: Text(
                            "Correct Answer: ${question.correct_answer}",
                            style: const TextStyle(
                              color: Colors.green,
                              fontSize: 15,
                            ),
                          ),
                        ),
                    ],
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
