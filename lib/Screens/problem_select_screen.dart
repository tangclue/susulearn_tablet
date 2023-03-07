import 'package:flutter/material.dart';
import 'package:susulearn_tablet/Screens/problem_hint_screen.dart';
import 'package:susulearn_tablet/problems/problemsG4C1.dart';

import '../Constants/gaps.dart';
import '../Constants/sizes.dart';
import '../problems/problemsG4C0.dart';
import '../widgets/select_problem_button.dart';

class ProblemSelectScreen extends StatefulWidget {
  const ProblemSelectScreen(
      {super.key, required this.grade, required this.chapter});
  final int grade;
  final int chapter;

  @override
  State<ProblemSelectScreen> createState() => _ProblemSelectScreenState();
}

class _ProblemSelectScreenState extends State<ProblemSelectScreen> {
  void _onTapProbplem(context, grade, chapter, index) {
    Navigator.of(context).push(MaterialPageRoute(
        builder: (context) => ProblemHintScreen(
              grade: widget.grade,
              chapter: widget.chapter,
              index: index,
            )));
  }

  int itemcount = 0;

  @override
  void initState() {
    super.initState();
    if (widget.grade == 4) {
      if (widget.chapter == 0) {
        itemcount = ProblemsG4C0.listProblem.length;
      } else if (widget.chapter == 1) {
        itemcount = ProblemsG4C1.listProblem.length;
        print("qqq");
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("문제를 골라주세요."),
      ),
      body: Padding(
          padding: const EdgeInsets.symmetric(
              vertical: Sizes.size48, horizontal: Sizes.size24),
          child: ListView.separated(
            itemCount: itemcount,
            itemBuilder: (context, index) {
              return SelectProblemButton(
                function: _onTapProbplem,
                text: "문제",
                grade: widget.grade,
                chapter: widget.chapter,
                index: index + 1,
              );
            },
            separatorBuilder: (context, index) {
              return Gaps.v16;
            },
          )),
    );
  }
}
