// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'scores.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Scores _$ScoresFromJson(Map<String, dynamic> json) => Scores(
      scores: (json['scores'] as List<dynamic>)
          .map((e) => Score.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$ScoresToJson(Scores instance) => <String, dynamic>{
      'scores': instance.scores,
    };
