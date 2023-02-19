import 'package:flutter/material.dart';
import 'package:flutter_tex/flutter_tex.dart';

import '../problems/problems.dart';

class ExampleScreen2 extends StatefulWidget {
  const ExampleScreen2({super.key});

  @override
  State<ExampleScreen2> createState() => _ExampleScreen2State();
}

class _ExampleScreen2State extends State<ExampleScreen2> {
  int index = 1;
  var choice = Problems.listChoices[0][0];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text("TeXViewDocuments"),
      ),
      body: Scrollbar(
        child: SingleChildScrollView(
          child: Column(
            children: [
              TeXView(
                child: TeXViewColumn(
                  children: [
                    // Gaps.v20,
                    TeXViewDocument(
                      Problems.listProblem[index - 1],
                    ),

                    // for (var image in Problems.listImages[index - 1])
                    //   Column(
                    //     children: [image, Gaps.v20],
                    //   ),

                    // for (var choice in Problems.listChoices[index - 1])

                    TeXViewDocument(
                      Problems.listProblem[index - 1],
                    ),

                    TeXViewDocument(
                      Problems.listProblem[index - 1],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
