import 'package:json_annotation/json_annotation.dart';

part 'user.g.dart';

@JsonSerializable()
class User {
  final String id;
  final String username;
  final String email;
  final int gamesPlayed;

  User({
    required this.id,
    required this.username,
    required this.email,
    required this.gamesPlayed
  });

  // Create a factory constructor to generate User from JSON
  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
  // factory User.fromJson(Map<String, dynamic> json) {
  //   return User(
  //     id: json['_id'] as String,
  //     username: json['username'] as String,
  //     email: json['email'] as String,
  //     gamesPlayed: json['gamesPlayed'] as int,
  //   );
  // }

  // Manually define the toJson method
  Map<String, dynamic> toJson() => _$UserToJson(this);

  // Map<String, dynamic> toJson() {
  //   return {
  //     'id': id,
  //     'username': username,
  //     'email': email,
  //     'gamesPlayed':gamesPlayed
  //   };
  // }
}
