import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_tex/flutter_tex.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:pointer_interceptor/pointer_interceptor.dart';

import '../Constants/gaps.dart';
import '../Constants/sizes.dart';
import '../problems/problems.dart';
import '../widgets/drawing_widgets.dart';

class ProblemHintScreen extends StatefulWidget {
  const ProblemHintScreen({super.key, required this.index});
  final int index;

  @override
  State<ProblemHintScreen> createState() => _ProblemHintScreenState();
}

class _ProblemHintScreenState extends State<ProblemHintScreen> {
  int hintIndex = 0;
  int hintMax = 0;

  String _problem = "";
  List _listImages = [];
  List _listChoices = [];
  List _listHints = [];
  Map _hintImg = {};
  late int _ans;

  int _submitIndex = 0;
  bool _submitted = false;
  bool _corrected = false;
  bool _isDrawing = false;

  void _onHintPressed(context) {
    if (hintIndex < hintMax) {
      hintIndex++;
    }
    setState(() {});
  }

  @override
  void initState() {
    super.initState();
    hintMax = Problems.listHints[widget.index - 1].length;
    setState(() {});

    _problem = Problems.listProblem[widget.index - 1];
    _listImages = Problems.listImages[widget.index - 1];
    _listChoices = Problems.listChoices[widget.index - 1];
    _listHints = Problems.listHints[widget.index - 1];
    _hintImg = Problems.listHintImg[widget.index - 1];
    _ans = 3;
  }

  void clearExpressions() {
    _problem = "";
    _listImages = [];
    _listChoices = [];
    _listHints = [];
    _hintImg = {};
    setState(() {});
  }

  Widget hintTypeTextWidget(int i) {
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
    _corrected = (_submitIndex == _ans);

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

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () {
        clearExpressions();
        return Future.value(true);
      },
      child: Scaffold(
        appBar: AppBar(
          title: Text("문제 ${widget.index}"),
        ),
        body: SafeArea(
          child: SingleChildScrollView(
            physics: !_isDrawing
                ? const AlwaysScrollableScrollPhysics()
                : const NeverScrollableScrollPhysics(),
            child: Stack(children: [
              IgnorePointer(
                ignoring: !_isDrawing,
                child: Container(
                  color: Colors.transparent,
                  child: Container(
                    width: MediaQuery.of(context).size.width * 1,
                    // height: 2000,
                    color: Colors.transparent,
                    child: Padding(
                      padding: const EdgeInsets.only(
                          top: Sizes.size48,
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
                                _problem,
                              ),
                            ),
                          ),
                          Positioned.fill(
                              child: PointerInterceptor(
                                  child: Container(color: Colors.transparent)))
                        ]),
                        for (var image in _listImages)
                          Column(
                            children: [image, Gaps.v20],
                          ),
                        for (var i = 0; i < _listChoices.length; i++)
                          Column(
                            children: [
                              Padding(
                                  padding: const EdgeInsets.all(10),
                                  child: Stack(
                                    children: [
                                      Container(
                                        padding: const EdgeInsets.all(10),
                                        height: Sizes.size44,
                                        child: TeXView(
                                          child: TeXViewDocument(
                                            Problems.listChoicesNumber[i] +
                                                Problems.gap +
                                                _listChoices[i],
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
                                                      color: i + 1 ==
                                                              _submitIndex
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
                        for (var i = 0; i < _listHints.length; i++)
                          Stack(children: [
                            AnimatedOpacity(
                              duration: const Duration(milliseconds: 300),
                              opacity: hintIndex > i ? 1 : 0,
                              child: Column(
                                children: [
                                  hintTypeTextWidget(i),
                                  Gaps.v20,
                                  SizedBox(
                                    height: 150,
                                    child: TeXView(
                                      child: TeXViewColumn(children: [
                                        TeXViewDocument(_listHints[i],
                                            style: const TeXViewStyle(
                                                margin: TeXViewMargin.only(
                                                    top: 10)))
                                      ]),
                                    ),
                                  ),
                                  _hintImg[i + 1] ?? Gaps.v10,
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
              ),
              IgnorePointer(
                ignoring: !_isDrawing,
                child: _isDrawing ? const DrawingWidgets() : const SizedBox(),
              ),
              Positioned(
                  top: Sizes.size12,
                  right: Sizes.size60,
                  child: Column(
                    children: [
                      IconButton(
                        icon: const FaIcon(FontAwesomeIcons.paperPlane),
                        onPressed: _onPressedSubmit,
                      ),
                      const Text("채점하기")
                    ],
                  )),
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
              Positioned(
                  top: Sizes.size60,
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
                  top: Sizes.size60,
                  left: Sizes.size12,
                  child: AnimatedOpacity(
                      opacity: (_submitted && _corrected) ? 1 : 0,
                      duration: const Duration(milliseconds: 500),
                      child: FaIcon(
                        FontAwesomeIcons.circle,
                        size: Sizes.size80,
                        color: Colors.green.withOpacity(0.5),
                      )))
            ]),
          ),
        ),
        bottomNavigationBar: BottomAppBar(
            child: CupertinoButton(
          color: Colors.amber,
          onPressed: () {
            _onHintPressed(context);
          },
          child: Text("Hint! ($hintIndex / $hintMax)"),
        )),
      ),
    );
  }
}
