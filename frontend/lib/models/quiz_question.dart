import 'package:json_annotation/json_annotation.dart';

part 'quiz_question.g.dart';

@JsonSerializable()
class QuizQuestion {
  String category;
  String type;
  String difficulty;
  String question;
  String correct_answer;
  List<String> incorrect_answers;

  QuizQuestion({
    required this.category,
    required this.type,
    required this.difficulty,
    required this.question,
    required this.correct_answer,
    required this.incorrect_answers,
  });

  factory QuizQuestion.fromJson(Map<String, dynamic> json) =>
      _$QuizQuestionFromJson(json);
  Map<String, dynamic> toJson() => _$QuizQuestionToJson(this);
}
