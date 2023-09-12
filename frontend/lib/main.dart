import 'package:flutter/material.dart';
import 'package:frontend/Routes/routes.dart';
import 'package:frontend/context/app_start.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(ChangeNotifierProvider(
    create: (context) => AppState(),
    child: const MainApp(),
  ));
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Trivia App",
      debugShowCheckedModeBanner: false,
      routes: AppRoutes.getRoutes(),
    );
  }
}
