import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_tex/flutter_tex.dart';

import '../Constants/gaps.dart';
import '../Constants/sizes.dart';
import '../problems/problems.dart';

class ExampleScreen extends StatefulWidget {
  const ExampleScreen({super.key, required this.index});
  final int index;

  @override
  State<ExampleScreen> createState() => _ExampleScreenState();
}

class _ExampleScreenState extends State<ExampleScreen> {
  int hint_index = 0;
  int hint_max = 0;

  void _onHintPressed(context) {
    if (hint_index < hint_max) {
      hint_index++;
    }
    setState(() {});
  }

  @override
  void initState() {
    super.initState();
    hint_max = Problems.listHints[widget.index - 1].length;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("문제 ${widget.index}"),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(
            vertical: Sizes.size48, horizontal: Sizes.size24),
        child: Scrollbar(
          child: SingleChildScrollView(
            child: Column(children: [
              const FractionallySizedBox(
                widthFactor: 1,
              ),
              Gaps.v20,
              SizedBox(
                height: Sizes.size80 * 2,
                child: TeXView(
                  child: TeXViewDocument(
                    Problems.listProblem[widget.index - 1],
                  ),
                ),
              ),
              Gaps.v20,
              for (var image in Problems.listImages[widget.index - 1])
                Column(
                  children: [image, Gaps.v20],
                ),
              for (var choice in Problems.listChoices[widget.index - 1])
                Column(
                  children: [
                    Container(
                      color: Colors.pink,
                      child: Row(
                        children: [
                          CircleAvatar(
                            backgroundColor: Colors.grey.shade300,
                            child: Text(
                              "${Problems.listChoices[widget.index - 1].indexOf(choice) + 1}",
                              style: const TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black),
                            ),
                          ),
                          Gaps.h20,
                          Expanded(
                            // height: 100,
                            child: Container(
                              height: 100,
                              color: Colors.amber,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    color: Colors.green,
                                    height: 50,
                                    width: 100,

                                    // alignment: Alignment.centerLeft,
                                    child: TeXView(
                                      style: const TeXViewStyle(
                                          backgroundColor: Colors.blue),
                                      child: TeXViewDocument(
                                        style: const TeXViewStyle(
                                            backgroundColor: Colors.grey),
                                        choice,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    Gaps.v20
                  ],
                ),
              Gaps.v20,
              for (var hint in Problems.listHints[widget.index - 1])
                AnimatedOpacity(
                  duration: const Duration(milliseconds: 300),
                  opacity: hint_index >
                          Problems.listHints[widget.index - 1].indexOf(hint)
                      ? 1
                      : 0,
                  child: Column(
                    children: [
                      SizedBox(
                        height: 100,
                        child: TeXView(
                          child: TeXViewDocument(
                            hint,
                          ),
                        ),
                      ),
                      Gaps.v20,
                    ],
                  ),
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
        child: Text("Hint! ($hint_index / $hint_max)"),
      )),
    );
  }
}
