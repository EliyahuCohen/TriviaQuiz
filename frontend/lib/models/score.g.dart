// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'score.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Score _$ScoreFromJson(Map<String, dynamic> json) => Score(
      userId: json['userId'] as String,
      userName: json['userName'] as String,
      score: json['score'] as String,
    );

Map<String, dynamic> _$ScoreToJson(Score instance) => <String, dynamic>{
      'userId': instance.userId,
      'userName': instance.userName,
      'score': instance.score,
    };
