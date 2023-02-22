import 'package:flutter/material.dart';
import 'package:susulearn_tablet/Screens/problem_hint_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(
            primarySwatch: Colors.blue, scaffoldBackgroundColor: Colors.white),
        home: const ProblemHintScreen(
          index: 3,
        ));
  }
}
