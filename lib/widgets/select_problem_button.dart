import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SelectProblemButton extends StatefulWidget {
  const SelectProblemButton(
      {Key? key,
      required this.text,
      required this.function,
      required this.index})
      : super(key: key);
  final String text;
  final Function function;
  final int index;

  @override
  _SelectProblemButtonState createState() => _SelectProblemButtonState();
}

class _SelectProblemButtonState extends State<SelectProblemButton> {
  @override
  Widget build(BuildContext context) {
    return CupertinoButton(
      onPressed: () {
        widget.function(context, widget.index);
      },
      color: Colors.amber,
      child: FractionallySizedBox(
          widthFactor: 1,
          child: Center(child: Text("${widget.text} ${widget.index}"))),
    );
  }
}
