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
          child: FutureBuilder(
            future: _hintfuture(),
            builder: (context, snapshot) {
              if (snapshot.hasError) {
                print("ERROR!");
                setState(() {});
                return const SizedBox();
              } else if (snapshot.connectionState == ConnectionState.done &&
                  snapshot.hasData &&
                  widget.isShowing) {
                return Container(
                  child: snapshot.data,
                );
              } else {
                return const Center(child: CircularProgressIndicator());
              }
            },
          )),
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
