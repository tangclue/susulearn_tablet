import 'package:flutter/material.dart';
import 'package:susulearn_tablet/Screens/problem_select_screen.dart';

import '../Constants/gaps.dart';
import '../Constants/sizes.dart';
import '../widgets/select_problemset_button.dart';

class ProblemsetSelectScreen extends StatefulWidget {
  const ProblemsetSelectScreen({Key? key}) : super(key: key);

  @override
  State<ProblemsetSelectScreen> createState() => _ProblemsetSelectScreenState();
}

class _ProblemsetSelectScreenState extends State<ProblemsetSelectScreen> {
  void _onTapProbplemSelect(context) {
    Navigator.of(context).push(
        MaterialPageRoute(builder: (context) => const ProblemSelectScreen()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("학년을 골라주세요."),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(
            vertical: Sizes.size48, horizontal: Sizes.size24),
        child: Column(children: [
          SelectProblemsetButton(
            function: _onTapProbplemSelect,
            text: "초등학교 6학년",
            isActivated: false,
          ),
          Gaps.v16,
          SelectProblemsetButton(
            function: _onTapProbplemSelect,
            text: "중학교 1학년",
            isActivated: false,
          ),
          Gaps.v16,
          SelectProblemsetButton(
            function: _onTapProbplemSelect,
            text: "중학교 2학년",
            isActivated: false,
          ),
          Gaps.v16,
          SelectProblemsetButton(
            function: _onTapProbplemSelect,
            text: "중학교 3학년",
            isActivated: true,
          ),
          Gaps.v16,
          SelectProblemsetButton(
            function: _onTapProbplemSelect,
            text: "고등학교 1학년",
            isActivated: false,
          ),
          Gaps.v16,
          SelectProblemsetButton(
            function: _onTapProbplemSelect,
            text: "고등학교 2학년",
            isActivated: false,
          ),
        ]),
      ),
    );
  }
}
