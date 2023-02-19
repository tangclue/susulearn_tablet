import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SelectProblemsetButton extends StatefulWidget {
  const SelectProblemsetButton(
      {Key? key,
      required this.text,
      required this.function,
      this.isActivated = true})
      : super(key: key);
  final String text;
  final Function function;
  final bool isActivated;

  @override
  _SelectProblemsetButtonState createState() => _SelectProblemsetButtonState();
}

class _SelectProblemsetButtonState extends State<SelectProblemsetButton> {
  @override
  Widget build(BuildContext context) {
    return CupertinoButton(
      onPressed: widget.isActivated
          ? () {
              widget.function(context);
            }
          : () {},
      color: widget.isActivated ? Colors.amber : Colors.grey,
      child: FractionallySizedBox(
          widthFactor: 1, child: Center(child: Text(widget.text))),
    );
  }
}
