import 'package:flutter/material.dart';
import 'package:frontend/models/quiz_question.dart';
import 'package:provider/provider.dart';
import 'package:frontend/context/app_start.dart';

class QuestionCard extends StatefulWidget {
  final QuizQuestion question;
  final int index;
  final Function(QuizQuestion, int, int) selectFunction;

  const QuestionCard({
    Key? key,
    required this.question,
    required this.index,
    required this.selectFunction,
  }) : super(key: key);

  @override
  _QuestionCardState createState() => _QuestionCardState();
}

class _QuestionCardState extends State<QuestionCard> {
  int selectedAnswer = -1;

  @override
  Widget build(BuildContext context) {
    final appState = context.watch<AppState>();
    final isQuestionSelected = appState.answers.length > widget.index &&
        appState.answers[widget.index] != -1;

    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(
              (widget.index + 1).toString(),
              style: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            Container(
              // Use conditional statement to change the background color
              child: Text(
                widget.question.question,
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: isQuestionSelected ? Colors.black : Colors.black,
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            ListView.builder(
              shrinkWrap: true,
              itemCount: widget.question.incorrect_answers.length,
              itemBuilder: (BuildContext context, int i) {
                return GestureDetector(
                  onTap: () {
                    setState(() {
                      selectedAnswer = i;
                    });
                    widget.selectFunction(widget.question, widget.index, i);
                  },
                  child: Container(
                    margin: const EdgeInsets.only(top: 5),
                    width: double.maxFinite,
                    decoration: BoxDecoration(
                      color: selectedAnswer == i ? Colors.amber[200] : null,
                      border: Border.all(color: Colors.black),
                    ),
                    padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
                    child: Text(
                      widget.question.incorrect_answers[i],
                      style: TextStyle(
                        color:
                            selectedAnswer == i ? Colors.white : Colors.black,
                        fontSize: 15,
                      ),
                    ),
                  ),
                );
              },
            ),
            const SizedBox(
              height: 10,
            ),
          ],
        ),
      ),
    );
  }
}
