import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:frontend/types/types.dart';

class AppState extends ChangeNotifier {
  UserResponse? _user;

  UserResponse? get user => _user;

  void setUser(UserResponse newUser) {
    _user = newUser;
    notifyListeners();
  }

  void logout() {
    _user = null;
    notifyListeners();
  }
}
