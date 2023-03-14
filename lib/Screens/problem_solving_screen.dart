import 'package:flutter/material.dart';
import 'package:susulearn_tablet/Screens/example_screen.dart';

import '../Constants/gaps.dart';
import '../Constants/sizes.dart';
import '../problems/problems.dart';
import '../widgets/next_button.dart';

class ProblemSolvingScreen extends StatefulWidget {
  ProblemSolvingScreen({super.key, required this.index});
  int index;

  @override
  State<ProblemSolvingScreen> createState() => _ProblemSolvingScreenState();
}

class _ProblemSolvingScreenState extends State<ProblemSolvingScreen> {
  late final int _problemNumber = Problems.listProblem.length;
  // final int _problemNumber = 1;
  void _onTapPrev() {
    setState(() {
      widget.index--;
    });
  }

  void _onTapNext() {
    setState(() {
      widget.index++;
    });
  }

  // void _onPressedSubmit() {
  // setState(() {
  //   _submitted = true;

  //   _corrected = (_submitIndex == _ans);
  // });

  // showDialog(
  //   context: context,
  //   builder: (BuildContext context) {
  //     return AlertDialog(
  //       title: const Text('채점 결과'),
  //       content: const Text('This is a pop-up notice.'),
  //       actions: [
  //         TextButton(
  //           child: const Text('Close'),
  //           onPressed: () {
  //             Navigator.of(context).pop();
  //           },
  //         ),
  //       ],
  //     );
  //   },
  // );
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        for (int k = 1; k < _problemNumber + 1; k++)
          Offstage(
            offstage: widget.index != k,
            child: ExampleScreen1(
              index: k,
              isShowing: widget.index == k,
            ),
          ),
      ]),
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
                      Text("${widget.index} / $_problemNumber"),
                      Gaps.h24,
                      if (widget.index < _problemNumber)
                        GestureDetector(
                          onTap: _onTapNext,
                          child: const NextButton(
                            text: "next >",
                          ),
                        ),
                    ]),
              ],
            ),
            // Row(
            //   mainAxisAlignment: MainAxisAlignment.end,
            //   children: [
            //     Column(
            //       mainAxisSize: MainAxisSize.min,
            //       children: [
            //         GestureDetector(
            //             onTap: _onPressedSubmit,
            //             child: const GradeButton(text: "채점\n하기")),
            //         // Gaps.v10,
            //         // const GradeButton(text: "전체\n채점")
            //       ],
            //     )
            //   ],
            // ),
          ]),
        ),
      ),
    );
  }
}
