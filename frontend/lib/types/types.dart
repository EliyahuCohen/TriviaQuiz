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

  // factory UserResponse.fromJson(Map<String, dynamic> json) {
  //   return UserResponse(
  //     token: json['token'] as String,
  //     user: json['user'] as User,
  //   );
  // }

  // Manually define the toJson method

  Map<String, dynamic> toJson() => _$UserResponseToJson(this);
  // Map<String, dynamic> toJson() {
  //   return {
  //     'token': token,
  //     'user': user
  //   };
  // }
}

@JsonSerializable()
class SignUpRequest {
  String username;
  String email;
  String password;

  SignUpRequest(
      {required this.username, required this.email, required this.password});
}

@JsonSerializable()
class LoginRequest {
  String email;
  String password;

  LoginRequest({required this.email, required this.password});

  factory LoginRequest.fromJson(Map<String, dynamic> json) => _$LoginRequestFromJson(json);

  // factory LoginRequest.fromJson(Map<String, dynamic> json) {
  //   return LoginRequest(
  //     email: json['email'] as String,
  //     password: json['password'] as String,
  //   );
  // }
  Map<String, dynamic> toJson() => _$LoginRequestToJson(this);
  // Manually define the toJson method
  // Map<String, dynamic> toJson() {
  //   return {'email': email, 'password': password};
  // }
}
