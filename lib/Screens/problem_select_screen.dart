import 'package:flutter/material.dart';
import 'package:susulearn_tablet/Screens/problem_hint_screen.dart';

import '../Constants/gaps.dart';
import '../Constants/sizes.dart';
import '../problems/problems.dart';
import '../widgets/select_problem_button.dart';

class ProblemSelectScreen extends StatefulWidget {
  const ProblemSelectScreen({Key? key}) : super(key: key);

  @override
  State<ProblemSelectScreen> createState() => _ProblemSelectScreenState();
}

class _ProblemSelectScreenState extends State<ProblemSelectScreen> {
  void _onTapProbplem(context, index) {
    Navigator.of(context).push(MaterialPageRoute(
        builder: (context) => ProblemHintScreen(
              index: index,
            )));
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
            itemCount: Problems.listProblem.length,
            itemBuilder: (context, index) {
              return SelectProblemButton(
                function: _onTapProbplem,
                text: "문제",
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
