import 'package:flutter/material.dart';
import 'package:flutter_tex/flutter_tex.dart';
import 'package:pointer_interceptor/pointer_interceptor.dart';

class HintWidget extends StatefulWidget {
  const HintWidget({
    super.key,
    required this.hint,
    required this.isShowing,
  });

  final String hint;
  final bool isShowing;

  @override
  _HintWidgetState createState() => _HintWidgetState();
}

class _HintWidgetState extends State<HintWidget> {
  Future<Widget> _hintfuture() async {
    print("Rendered!");
    return TeXView(
      child: TeXViewDocument(
        widget.hint,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      SizedBox(
          height: 150,
          child: widget.isShowing
              ? TeXView(
                  renderingEngine: const TeXViewRenderingEngine.mathjax(),
                  loadingWidgetBuilder: (context) =>
                      const CircularProgressIndicator.adaptive(),
                  child: TeXViewDocument(
                    widget.hint,
                  ),
                )
              : Container()),
      Positioned.fill(
        child: PointerInterceptor(
          child: Container(
            color: Colors.transparent,
          ),
        ),
      )
    ]);
  }
}
