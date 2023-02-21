import 'package:flutter/material.dart';

import '../features/sketcher.dart';

class ExampleScreen extends StatefulWidget {
  const ExampleScreen({super.key});

  @override
  State<ExampleScreen> createState() => _ExampleScreenState();
}

class _ExampleScreenState extends State<ExampleScreen> {
  Color selectedColor = Colors.black;
  double selectedWidth = 3;
  List<DrawnLine> lines = <DrawnLine>[];
  DrawnLine line = DrawnLine([], Colors.black, 0);

  void _onPanStart(DragStartDetails details) {
    print('User started drawing');
    final box = context.findRenderObject() as RenderBox;
    final point = box.globalToLocal(details.localPosition);

    setState(() {
      line = DrawnLine([point], selectedColor, selectedWidth);
      lines.add(line);
    });
  }

  void _onPanUpdate(DragUpdateDetails details) {
    final box = context.findRenderObject() as RenderBox;
    final point = box.globalToLocal(details.localPosition);

    final path = List.from(line.path)..add(point);
    line = DrawnLine(path, selectedColor, selectedWidth);
    setState(() {
      if (lines.isEmpty) {
        lines.add(line);
      } else {
        lines[lines.length - 1] = line;
      }
    });
  }

  void _onPanEnd(DragEndDetails details) {
    final path = List.from(line.path)..add(null);

    setState(() {
      lines.add(line);
    });
  }

  void _clear() {
    setState(() {
      lines = [];
      line = DrawnLine([], Colors.black, 0);
    });
  }

  Widget buildColorButton(Color color) {
    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: FloatingActionButton(
        mini: true,
        backgroundColor: color,
        child: Container(),
        onPressed: () {
          setState(() {
            selectedColor = color;
          });
        },
      ),
    );
  }

  Widget buildStrokeButton(double strokeWidth) {
    return GestureDetector(
      onTap: () {
        selectedWidth = strokeWidth;
      },
      child: Padding(
        padding: const EdgeInsets.all(4.0),
        child: Container(
          width: strokeWidth * 2,
          height: strokeWidth * 2,
          decoration: BoxDecoration(
              color: selectedColor, borderRadius: BorderRadius.circular(20.0)),
        ),
      ),
    );
  }

  Widget buildStrokeToolbar() {
    return Positioned(
      bottom: 100.0,
      right: 10.0,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          buildStrokeButton(5.0),
          buildStrokeButton(10.0),
          buildStrokeButton(15.0),
        ],
      ),
    );
  }

  Widget buildColorToolbar() {
    return Positioned(
      top: 40.0,
      right: 10.0,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          buildClearButton(),
          const Divider(
            height: 10.0,
          ),
          buildColorButton(Colors.red),
          buildColorButton(Colors.blueAccent),
          buildColorButton(Colors.deepOrange),
          buildColorButton(Colors.green),
          buildColorButton(Colors.lightBlue),
          buildColorButton(Colors.black),
          buildColorButton(Colors.white),
          buildEraserButton(),
        ],
      ),
    );
  }

  Widget buildClearButton() {
    return GestureDetector(
      onTap: _clear,
      child: const CircleAvatar(
        child: Icon(
          Icons.create,
          size: 20.0,
          color: Colors.white,
        ),
      ),
    );
  }

  Widget buildEraserButton() {
    return GestureDetector(
      onTap: () {
        selectedWidth = 40;
        selectedColor = Colors.grey.shade200;
      },
      child: const CircleAvatar(
        child: Icon(
          Icons.rectangle,
          size: 20.0,
          color: Colors.white,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Example"),
        ),
        body: Stack(children: [
          GestureDetector(
            onPanStart: _onPanStart,
            onPanUpdate: _onPanUpdate,
            onPanEnd: _onPanEnd,
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              color: Colors.grey.shade200,
              child: CustomPaint(
                painter: Sketcher(lines: lines),
              ),
            ),
          ),
          buildColorToolbar(),
          buildStrokeToolbar(),
        ]));
  }
}

class DrawnLine {
  final List<dynamic> path;
  final Color color;
  final double width;

  DrawnLine(this.path, this.color, this.width);
}
