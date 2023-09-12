import "../models/user.dart";

class UserResponse {
  String token;
  User user;

  UserResponse({required this.token, required this.user});
}
