import 'package:flutter/material.dart';
import 'package:flutter_tex/flutter_tex.dart';
import 'package:pointer_interceptor/pointer_interceptor.dart';

import '../Constants/sizes.dart';

class ChoiceWidget extends StatefulWidget {
  const ChoiceWidget(
      {super.key, required this.choice, required this.isShowing});

  final String choice;
  final bool isShowing;

  @override
  _ChoiceWidgetState createState() => _ChoiceWidgetState();
}

class _ChoiceWidgetState extends State<ChoiceWidget> {
  Future<Widget> _choicefuture() async {
    print("Rendered!");
    return TeXView(
      child: TeXViewDocument(
        widget.choice,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Container(
          padding: const EdgeInsets.all(10),
          height: Sizes.size64,
          width: Sizes.size96,
          child: widget.isShowing
              ? TeXView(
                  // renderingEngine: const TeXViewRenderingEngine.mathjax(),
                  loadingWidgetBuilder: (context) =>
                      const CircularProgressIndicator.adaptive(),
                  child: TeXViewDocument(
                    widget.choice,
                  ),
                )
              : Container()),
      Positioned.fill(
        child: PointerInterceptor(
          child: Container(
            decoration: const BoxDecoration(
              color: Colors.transparent,
            ),
          ),
        ),
      )
    ]);
  }
}
