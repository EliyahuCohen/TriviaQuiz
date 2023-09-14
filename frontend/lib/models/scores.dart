import 'package:frontend/models/score.dart';
import 'package:json_annotation/json_annotation.dart';
part 'scores.g.dart';

@JsonSerializable()
class Scores {
  List<Score> scores;

  Scores({required this.scores});

  factory Scores.fromJson(Map<String, dynamic> json) => _$ScoresFromJson(json);
  Map<String, dynamic> toJson() => _$ScoresToJson(this);
}
