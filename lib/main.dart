import 'package:flutter/material.dart';
import 'package:susulearn_tablet/Screens/problem_select_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(
            appBarTheme: const AppBarTheme(
                backgroundColor: Colors.white,
                elevation: 2,
                foregroundColor: Colors.black,
                shadowColor: Colors.black),
            textTheme:
                const TextTheme(labelLarge: TextStyle(color: Colors.black)),
            primarySwatch: Colors.blue,
            scaffoldBackgroundColor: Colors.white,
            bottomAppBarTheme:
                const BottomAppBarTheme(elevation: 0, color: Colors.white)),
        home: const ProblemSelectScreen());
    // home: const ProblemHintScreen(
    //   index: 4,
    // ));
  }
}
