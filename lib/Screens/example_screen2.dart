import 'package:flutter/material.dart';
import 'package:flutter_tex/flutter_tex.dart';

import '../Constants/sizes.dart';

class ExampleScreen2 extends StatefulWidget {
  final TeXViewRenderingEngine renderingEngine;

  const ExampleScreen2(
      {Key? key, this.renderingEngine = const TeXViewRenderingEngine.katex()})
      : super(key: key);

  @override
  _ExampleScreen2State createState() => _ExampleScreen2State();
}

class _ExampleScreen2State extends State<ExampleScreen2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text("TeXView Quiz"),
      ),
      body: GridView.builder(
        keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
        padding: const EdgeInsets.all(Sizes.size6),
        itemCount: 5,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          childAspectRatio: 9 / 20,
          // mainAxisExtent: 2,
          crossAxisCount: 3,
          crossAxisSpacing: Sizes.size10,
          mainAxisSpacing: Sizes.size10,
        ),
        itemBuilder: (context, index) {
          return Container(width: 400, height: 400, color: Colors.amber);
        },
      ),
    );
  }
}
