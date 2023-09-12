import 'package:flutter/material.dart';
import 'package:frontend/pages/history_page.dart';
import 'package:frontend/pages/login_page.dart';
import 'package:frontend/pages/profile_page.dart';
import 'package:frontend/pages/score_page.dart';
import 'package:frontend/pages/signup.dart';
import 'package:frontend/pages/trivia_page.dart';

class AppRoutes {
  static const String login = '/';
  static const String signup = '/signup';
  static const String trivia = '/trivia';
  static const String score = '/score';
  static const String history = '/history';
  static const String profile = '/profile';

  static Map<String, WidgetBuilder> getRoutes() {
    return {
      login: (context) => const LoginPage(),
      signup: (context) => const SignUpPage(),
      trivia: (context) => const TriviaPage(),
      score: (context) => const ScorePage(),
      history: (context) => const HistoryPage(),
      profile: (context) => const ProfilePage(),
    };
  }
}
