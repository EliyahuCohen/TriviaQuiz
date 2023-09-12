import 'package:flutter/foundation.dart';
import 'package:frontend/models/user.dart';

class AppState extends ChangeNotifier {
  User? _user;

  User? get user => _user;

  void setUser(User newUser) {
    _user = newUser;
    notifyListeners();
  }
}
