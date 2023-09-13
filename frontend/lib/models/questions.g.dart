// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'questions.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

QuizRequest _$QuizRequestFromJson(Map<String, dynamic> json) => QuizRequest(
      questions: (json['questions'] as List<dynamic>)
          .map((e) => QuizQuestion.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$QuizRequestToJson(QuizRequest instance) =>
    <String, dynamic>{
      'questions': instance.questions,
    };
