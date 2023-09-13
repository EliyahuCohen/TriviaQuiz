import "../models/user.dart";
import 'package:json_annotation/json_annotation.dart';

part 'types.g.dart';

@JsonSerializable()
class UserResponse {
  String token;
  User user;

  UserResponse({required this.token, required this.user});
  factory UserResponse.fromJson(Map<String, dynamic> json) =>
      _$UserResponseFromJson(json);
  Map<String, dynamic> toJson() => _$UserResponseToJson(this);
}

@JsonSerializable()
class SignUpRequest {
  String username;
  String email;
  String password;

  SignUpRequest(
      {required this.username, required this.email, required this.password});

  factory SignUpRequest.fromJson(Map<String, dynamic> json) =>
      _$SignUpRequestFromJson(json);
  Map<String, dynamic> toJson() => _$SignUpRequestToJson(this);
}

@JsonSerializable()
class LoginRequest {
  String email;
  String password;

  LoginRequest({required this.email, required this.password});

  factory LoginRequest.fromJson(Map<String, dynamic> json) =>
      _$LoginRequestFromJson(json);
  Map<String, dynamic> toJson() => _$LoginRequestToJson(this);
}
