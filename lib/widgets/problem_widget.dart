import 'package:flutter/material.dart';
import 'package:flutter_tex/flutter_tex.dart';
import 'package:pointer_interceptor/pointer_interceptor.dart';

import '../Constants/sizes.dart';

class ProblemWidget extends StatefulWidget {
  const ProblemWidget(
      {super.key, required this.problem, required this.isShowing});

  final String problem;
  final bool isShowing;

  @override
  _ProblemWidgetState createState() => _ProblemWidgetState();
}

class _ProblemWidgetState extends State<ProblemWidget> {
  Future<Widget> _problemfuture() async {
    print("Rendered!");
    return TeXView(
      child: TeXViewDocument(
        widget.problem,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      SizedBox(
          height: Sizes.size80 * 2,
          child: widget.isShowing
              ? TeXView(
                  // renderingEngine: const TeXViewRenderingEngine.mathjax(),
                  loadingWidgetBuilder: (context) =>
                      const CircularProgressIndicator.adaptive(),
                  child: TeXViewDocument(
                    widget.problem,
                  ),
                )
              : Container()),
      Positioned.fill(
          child:
              PointerInterceptor(child: Container(color: Colors.transparent)))
    ]);
  }
}