import 'package:flutter/material.dart';
import 'package:flutter_tex/flutter_tex.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:pointer_interceptor/pointer_interceptor.dart';
import 'package:susulearn_tablet/widgets/grade_button.dart';
import 'package:susulearn_tablet/widgets/hint_button.dart';

import '../Constants/gaps.dart';
import '../Constants/sizes.dart';
import '../problems/problemsG4C0.dart';
import '../problems/problemsG4C1.dart';
import '../widgets/drawing_widgets.dart';
import '../widgets/next_button.dart';

class ProblemHintScreen extends StatefulWidget {
  ProblemHintScreen(
      {super.key,
      required this.index,
      required this.grade,
      required this.chapter});
  int index;
  int grade;
  int chapter;

  @override
  State<ProblemHintScreen> createState() => _ProblemHintScreenState();
}

class _ProblemHintScreenState extends State<ProblemHintScreen> {
  late final int problemNumber = ProblemsG4C1.listProblem.length;
  late String problem = ProblemsG4C1.listProblem[widget.index - 1];
  late List listImages = ProblemsG4C1.listImages[widget.index - 1];
  late List listChoices = ProblemsG4C1.listChoices[widget.index - 1];
  late List listHints = ProblemsG4C1.listHints[widget.index - 1];
  late Map hintImg = ProblemsG4C1.listHintImg[widget.index - 1];
  late final int ans = ProblemsG4C1.listAns[widget.index - 1];
  late int hintMax = ProblemsG4C1.listHints[widget.index - 1].length;
  @override
  void initState() {
    super.initState();
    if (widget.grade == 4) {
      if (widget.chapter == 0) {
        late final int problemNumber = ProblemsG4C0.listProblem.length;
        late String problem = ProblemsG4C0.listProblem[widget.index - 1];
        late List listImages = ProblemsG4C0.listImages[widget.index - 1];
        late List listChoices = ProblemsG4C0.listChoices[widget.index - 1];
        late List listHints = ProblemsG4C0.listHints[widget.index - 1];
        late Map hintImg = ProblemsG4C0.listHintImg[widget.index - 1];
        late final int ans = ProblemsG4C0.listAns[widget.index - 1];
        late int hintMax = ProblemsG4C0.listHints[widget.index - 1].length;
      }
    } else {
      late final int problemNumber = ProblemsG4C1.listProblem.length;
      late String problem = ProblemsG4C1.listProblem[widget.index - 1];
      late List listImages = ProblemsG4C1.listImages[widget.index - 1];
      late List listChoices = ProblemsG4C1.listChoices[widget.index - 1];
      late List listHints = ProblemsG4C1.listHints[widget.index - 1];
      late Map hintImg = ProblemsG4C1.listHintImg[widget.index - 1];
      late final int ans = ProblemsG4C1.listAns[widget.index - 1];
      late int hintMax = ProblemsG4C1.listHints[widget.index - 1].length;
    }
  }

  late final List<bool> _hintShowing = List.filled(hintMax, false);
  int _submitIndex = 0;
  bool _submitted = false;
  bool _corrected = false;
  bool _isDrawing = false;

  void clearExpressions() {
    problem = "";
    listImages = [];
    listChoices = [];
    listHints = [];
    hintImg = {};
    setState(() {});
  }

  Widget _hintTypeTextWidget(int i) {
    switch (i) {
      case 0:
        return const Text(
          "용어 힌트",
          style: TextStyle(fontSize: Sizes.size16, fontWeight: FontWeight.w800),
        );

      case 1:
        return const Text(
          "개념 힌트",
          style: TextStyle(fontSize: Sizes.size16, fontWeight: FontWeight.w800),
        );
      case 2:
        return const Text("해설 힌트",
            style:
                TextStyle(fontSize: Sizes.size16, fontWeight: FontWeight.w800));
      default:
        return const Text("추가 힌트",
            style:
                TextStyle(fontSize: Sizes.size16, fontWeight: FontWeight.w800));
    }
  }

  final ScrollController _scrollController = ScrollController();

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  void _onPressedSubmit() {
    _submitted = true;
    _corrected = (_submitIndex == ans);

    setState(() {});
  }

  void _onTapAnswerIndex(int i) {
    setState(() {
      _submitIndex = i + 1;
      print("$_submitIndex");
    });
  }

  void _onToggleDrawing() {
    setState(() {
      _isDrawing = !_isDrawing;
    });
  }

  void _onToggleHint({required int index}) {
    setState(() {
      _hintShowing[index] = !_hintShowing[index];
    });
  }

  void _onTapPrev() {
    Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => ProblemHintScreen(
            index: widget.index - 1,
            chapter: widget.chapter,
            grade: widget.grade,
          ),
        ));
    // setState(() {});
    // widget.index = widget.index - 1;
  }

  void _onTapNext() {
    Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => ProblemHintScreen(
            index: widget.index + 1,
            chapter: widget.chapter,
            grade: widget.grade,
          ),
        ));
    // setState(() {});
    // widget.index = widget.index + 1;
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () {
        clearExpressions();
        return Future.value(true);
      },
      child: Scaffold(
        appBar: AppBar(
          title: const Text("2021 고등학교 1학년 3월 모의고사"),
          actions: [
            GestureDetector(
              onTap: () {
                _onToggleHint(index: 0);
              },
              child: const HintButton(
                text: "용어\n힌트",
              ),
            ),
            Gaps.h10,
            GestureDetector(
              onTap: () {
                _onToggleHint(index: 1);
              },
              child: const HintButton(
                text: "개념\n힌트",
              ),
            ),
            Gaps.h10,
            GestureDetector(
              onTap: () {
                _onToggleHint(index: 2);
              },
              child: const HintButton(
                text: "해설\n힌트",
              ),
            ),
            Gaps.h10,
          ],
        ),
        body: SafeArea(
          child: SingleChildScrollView(
            physics: !_isDrawing
                ? const AlwaysScrollableScrollPhysics()
                : const NeverScrollableScrollPhysics(),
            child: Stack(children: [
              Container(
                color: Colors.transparent,
                child: Container(
                  width: MediaQuery.of(context).size.width * 1,
                  // height: 2000,
                  color: Colors.transparent,
                  child: Padding(
                    padding: const EdgeInsets.only(
                        // top: Sizes.size12,
                        right: Sizes.size60,
                        left: Sizes.size24),
                    child: Column(children: [
                      const FractionallySizedBox(
                        widthFactor: 1,
                      ),
                      Gaps.v40,
                      Stack(children: [
                        SizedBox(
                          height: Sizes.size80 * 3,
                          child: TeXView(
                            loadingWidgetBuilder: (context) {
                              return const Center(
                                  child: CircularProgressIndicator());
                            },
                            child: TeXViewDocument(
                              problem,
                            ),
                          ),
                        ),
                        Positioned.fill(
                            child: PointerInterceptor(
                                child: Container(color: Colors.transparent)))
                      ]),
                      for (var image in listImages)
                        Column(
                          children: [image, Gaps.v20],
                        ),
                      Wrap(
                        // scrollDirection: Axis.horizontal,
                        children: [
                          for (var i = 0; i < listChoices.length; i++)
                            Padding(
                                padding: const EdgeInsets.all(10),
                                child: Stack(
                                  children: [
                                    Container(
                                      padding: const EdgeInsets.all(10),
                                      height: Sizes.size60,
                                      width: Sizes.size96 * 5,
                                      child: TeXView(
                                        loadingWidgetBuilder: (context) {
                                          return const Center(
                                              child:
                                                  CircularProgressIndicator());
                                        },
                                        child: TeXViewDocument(
                                          "(${i + 1})${ProblemsG4C0.gap}" +
                                              listChoices[i],
                                        ),
                                      ),
                                    ),
                                    Positioned.fill(
                                      child: GestureDetector(
                                        onTap: () {
                                          _onTapAnswerIndex(i);
                                        },
                                        child: PointerInterceptor(
                                          child: Container(
                                            decoration: BoxDecoration(
                                                color: Colors.transparent,
                                                borderRadius:
                                                    BorderRadius.circular(
                                                        Sizes.size20),
                                                border: Border.all(
                                                    color: i + 1 == _submitIndex
                                                        ? Colors.black
                                                        : Colors.transparent,
                                                    width: Sizes.size1)),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                )),
                          Gaps.v20,
                        ],
                      ),
                      Gaps.v10,
                      for (var i = 0; i < listHints.length; i++)
                        Stack(children: [
                          AnimatedOpacity(
                            duration: const Duration(milliseconds: 300),
                            opacity: _hintShowing[i] ? 1 : 0,
                            child: Column(
                              children: [
                                _hintTypeTextWidget(i),
                                Gaps.v20,
                                SizedBox(
                                  height: Sizes.size96 * 2.5,
                                  child: TeXView(
                                    loadingWidgetBuilder: (context) {
                                      return const Center(
                                          child: CircularProgressIndicator());
                                    },
                                    child: TeXViewColumn(children: [
                                      TeXViewDocument(listHints[i],
                                          style: const TeXViewStyle(
                                              margin:
                                                  TeXViewMargin.only(top: 10)))
                                    ]),
                                  ),
                                ),
                                hintImg[i + 1] ?? Gaps.v10,
                                Gaps.v40,
                              ],
                            ),
                          ),
                          Positioned.fill(
                            child: PointerInterceptor(
                              child: Container(
                                color: Colors.transparent,
                              ),
                            ),
                          )
                        ]),
                    ]),
                  ),
                ),
              ),
              Positioned(
                  top: Sizes.size12,
                  left: Sizes.size12,
                  child: AnimatedOpacity(
                    opacity: (_submitted && !_corrected) ? 1 : 0,
                    duration: const Duration(milliseconds: 500),
                    child: FaIcon(
                      FontAwesomeIcons.x,
                      size: Sizes.size80,
                      color: Colors.red.withOpacity(0.5),
                    ),
                  )),
              Positioned(
                  top: Sizes.size12,
                  left: Sizes.size12,
                  child: AnimatedOpacity(
                      opacity: (_submitted && _corrected) ? 1 : 0,
                      duration: const Duration(milliseconds: 500),
                      child: FaIcon(
                        FontAwesomeIcons.circle,
                        size: Sizes.size80,
                        color: Colors.green.withOpacity(0.5),
                      ))),
              IgnorePointer(
                ignoring: !_isDrawing,
                child: _isDrawing ? const DrawingWidgets() : const SizedBox(),
              ),
              Positioned(
                  top: Sizes.size12,
                  right: Sizes.size12,
                  child: Column(
                    children: [
                      IconButton(
                        icon: !_isDrawing
                            ? const FaIcon(FontAwesomeIcons.pencil)
                            : const FaIcon(FontAwesomeIcons.ban),
                        onPressed: _onToggleDrawing,
                      ),
                      const Text("그리기")
                    ],
                  )),
            ]),
          ),
        ),
        bottomNavigationBar: BottomAppBar(
          padding: const EdgeInsets.symmetric(
              vertical: Sizes.size24, horizontal: Sizes.size20),
          child: IntrinsicHeight(
            child: Stack(children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        if (widget.index > 1)
                          GestureDetector(
                            onTap: _onTapPrev,
                            child: const NextButton(
                              text: "< prev",
                            ),
                          ),
                        Gaps.h24,
                        Text("${widget.index} / $problemNumber"),
                        Gaps.h24,
                        if (widget.index < problemNumber)
                          GestureDetector(
                            onTap: _onTapNext,
                            child: const NextButton(
                              text: "next >",
                            ),
                          ),
                      ]),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      GestureDetector(
                          onTap: _onPressedSubmit,
                          child: const GradeButton(text: "채점\n하기")),
                      Gaps.v10,
                      const GradeButton(text: "전체\n채점")
                    ],
                  )
                ],
              ),
            ]),
          ),
        ),
      ),
    );
  }
}
