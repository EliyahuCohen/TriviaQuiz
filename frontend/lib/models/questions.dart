import 'package:frontend/models/quiz_question.dart';
import 'package:json_annotation/json_annotation.dart';
part 'questions.g.dart';

@JsonSerializable()
class QuizRequest {
  List<QuizQuestion> questions;

  QuizRequest({required this.questions});

  factory QuizRequest.fromJson(Map<String, dynamic> json) =>
      _$QuizRequestFromJson(json);
  Map<String, dynamic> toJson() => _$QuizRequestToJson(this);
}
