import 'package:flutter/material.dart';
import 'package:susulearn_tablet/Screens/example_screen.dart';

import '../problems/problems.dart';

class ProblemSolvingScreen extends StatefulWidget {
  ProblemSolvingScreen({super.key, required this.index});
  int index;

  @override
  State<ProblemSolvingScreen> createState() => _ProblemSolvingScreenState();
}

class _ProblemSolvingScreenState extends State<ProblemSolvingScreen> {
  late final int _problemNumber = Problems.listProblem.length;
  // final int _problemNumber = 1;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        for (int k = 1; k < _problemNumber + 1; k++)
          Offstage(
            offstage: widget.index != k,
            child: ExampleScreen1(
              index: k,
              isShowing: widget.index == k,
            ),
          ),
        SafeArea(
          child: GestureDetector(
            onTap: () {
              setState(() {
                widget.index++;
                print(widget.index);
              });
            },
            child: Container(
              width: 50,
              height: 50,
              color: Colors.grey,
            ),
          ),
        ),
        Positioned(
            bottom: 40,
            child: GestureDetector(
              onTap: () {
                setState(() {
                  widget.index--;
                });
              },
              child: Container(
                width: 50,
                height: 50,
                color: Colors.orange,
              ),
            )),
      ],
    );
  }
}
