import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SelectChapterButton extends StatefulWidget {
  const SelectChapterButton(
      {Key? key,
      required this.text,
      required this.function,
      required this.grade,
      required this.chapter,
      this.isActivated = true})
      : super(key: key);
  final String text;
  final Function function;
  final bool isActivated;
  final int grade;
  final int chapter;

  @override
  _SelectChapterButtonState createState() => _SelectChapterButtonState();
}

class _SelectChapterButtonState extends State<SelectChapterButton> {
  @override
  Widget build(BuildContext context) {
    return CupertinoButton(
      onPressed: widget.isActivated
          ? () {
              widget.function(context, widget.grade, widget.chapter);
            }
          : () {},
      color: widget.isActivated ? Colors.amber : Colors.grey,
      child: FractionallySizedBox(
          widthFactor: 1, child: Center(child: Text(widget.text))),
    );
  }
}
