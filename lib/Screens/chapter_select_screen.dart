import 'package:flutter/material.dart';
import 'package:susulearn_tablet/Screens/problem_select_screen.dart';

import '../Constants/gaps.dart';
import '../Constants/sizes.dart';
import '../widgets/select_chapter_button.dart';

class ChapterSelectScreen extends StatefulWidget {
  const ChapterSelectScreen({Key? key}) : super(key: key);

  @override
  State<ChapterSelectScreen> createState() => _ChapterSelectScreenState();
}

class _ChapterSelectScreenState extends State<ChapterSelectScreen> {
  void _onTapChapterSelect(context, int grade, int chapter) {
    Navigator.of(context).push(MaterialPageRoute(
        builder: (context) => ProblemSelectScreen(
              grade: grade,
              chapter: chapter,
            )));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("챕터를 골라주세요."),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(
            vertical: Sizes.size48, horizontal: Sizes.size24),
        child: Column(children: [
          SelectChapterButton(
              function: _onTapChapterSelect,
              text: "제곱근과 실수",
              isActivated: true,
              grade: 4,
              chapter: 1),
          Gaps.v16,
          SelectChapterButton(
              function: _onTapChapterSelect,
              text: "다항식의 곱셈과 인수분해",
              isActivated: false,
              grade: 4,
              chapter: 2),
          Gaps.v16,
          SelectChapterButton(
              function: _onTapChapterSelect,
              text: "이차방정식",
              isActivated: false,
              grade: 4,
              chapter: 3),
          Gaps.v16,
          SelectChapterButton(
              function: _onTapChapterSelect,
              text: "이차함수와 그래프",
              isActivated: false,
              grade: 4,
              chapter: 4),
          Gaps.v16,
          SelectChapterButton(
              function: _onTapChapterSelect,
              text: "삼각비",
              isActivated: false,
              grade: 4,
              chapter: 5),
          Gaps.v16,
          SelectChapterButton(
              function: _onTapChapterSelect,
              text: "원의 성질",
              isActivated: false,
              grade: 4,
              chapter: 6),
          Gaps.v16,
          SelectChapterButton(
              function: _onTapChapterSelect,
              text: "통계",
              isActivated: false,
              grade: 4,
              chapter: 7),
          Gaps.v16,
          SelectChapterButton(
              function: _onTapChapterSelect,
              text: "모의고사",
              isActivated: true,
              grade: 4,
              chapter: 0),
        ]),
      ),
    );
  }
}
