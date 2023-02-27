import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_tex/flutter_tex.dart';
import 'package:susulearn_tablet/widgets/drawing_widgets.dart';

import '../Constants/gaps.dart';
import '../Constants/sizes.dart';
import '../problems/problems.dart';

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
  bool _shouldScroll = true;
  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
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
        body: Listener(
          onPointerDown: (event) {
            if (event.kind == PointerDeviceKind.stylus) {
              setState(() {
                print("Styler!");
                _shouldScroll = false;
              });
            } else {
              setState(() {
                print("finger!");
                _shouldScroll = true;
              });
            }
          },
          child: SafeArea(
            child: SingleChildScrollView(
              physics: _shouldScroll
                  ? const AlwaysScrollableScrollPhysics()
                  : const NeverScrollableScrollPhysics(),
              controller: _scrollController,
              child: Stack(children: [
                IgnorePointer(
                  ignoring: !_shouldScroll,
                  child: Container(
                    width: MediaQuery.of(context).size.width * 1,
                    // height: 2000,
                    color: Colors.transparent,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: Sizes.size48, horizontal: Sizes.size24),
                      child: Column(children: [
                        const FractionallySizedBox(
                          widthFactor: 1,
                        ),
                        Gaps.v20,
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
                        Gaps.v20,
                        for (var image in _listImages)
                          Column(
                            children: [image, Gaps.v20],
                          ),
                        for (var i = 0; i < _listChoices.length; i++)
                          Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(10),
                                child: TeXView(
                                  child: TeXViewDocument(
                                    Problems.listChoicesNumber[i] +
                                        Problems.gap +
                                        _listChoices[i],
                                  ),
                                ),
                              ),
                              Gaps.v20,
                            ],
                          ),
                        Gaps.v10,
                        for (var i = 0; i < _listHints.length; i++)
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
                                    child: TeXViewDocument(
                                      _listHints[i],
                                    ),
                                  ),
                                ),
                                _hintImg[i + 1] ?? Gaps.v10,
                                Gaps.v40,
                              ],
                            ),
                          ),
                      ]),
                    ),
                  ),
                ),
                IgnorePointer(
                  ignoring: _shouldScroll,
                  child: const DrawingWidgets(),
                ),
              ]),
            ),
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
