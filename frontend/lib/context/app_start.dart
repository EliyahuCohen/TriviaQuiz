import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:frontend/models/quiz_question.dart';
import 'package:frontend/types/types.dart';

class AppState extends ChangeNotifier {
  UserResponse? _user;

  UserResponse? get user => _user;
  List<int> _answers = [];
  List<int> get answers => _answers;
  List<QuizQuestion> _questions = [];
  List<QuizQuestion> get questions => _questions;

  void setUser(UserResponse newUser) {
    _user = newUser;
    notifyListeners();
  }

  void setAnswers(List<int> a) {
    _answers = a;
    notifyListeners();
  }

  void logout() {
    _user = null;
    notifyListeners();
  }

  void setQuestions(List<QuizQuestion> q) {
    _questions = q;
    notifyListeners();
  }

  void gameFinished() {
    _user?.user.gamesPlayed++;
    notifyListeners();
  }
}
