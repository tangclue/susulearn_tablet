import 'package:flutter/material.dart';

import '../features/sketcher.dart';

class DrawingWidgets extends StatefulWidget {
  const DrawingWidgets({super.key});

  @override
  State<DrawingWidgets> createState() => _DrawingWidgetsState();
}

class _DrawingWidgetsState extends State<DrawingWidgets> {
  Color selectedColor = Colors.black;
  double selectedWidth = 3;
  List<DrawnLine> lines = <DrawnLine>[];
  DrawnLine line = DrawnLine([], Colors.black, 0);

  void _onPanStart(DragStartDetails details) {
    print('User started drawing');
    final box = context.findRenderObject() as RenderBox;
    final point = box.globalToLocal(details.globalPosition);

    setState(() {
      line = DrawnLine([point], selectedColor, selectedWidth);
      lines.add(line);
    });
  }

  void _onPanUpdate(DragUpdateDetails details) {
    final box = context.findRenderObject() as RenderBox;
    final point = box.globalToLocal(details.globalPosition);

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
      selectedWidth = 5;
      selectedColor = Colors.black;
    });
  }

  Widget buildColorButton(Color color) {
    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: FloatingActionButton(
        mini: true,
        backgroundColor: color,
        shape: Border.all(color: Colors.black),
        child: Container(),
        onPressed: () {
          setState(() {
            selectedColor = color;
            selectedWidth = 5;
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
              color: selectedColor,
              borderRadius: BorderRadius.circular(30.0),
              border: Border.all(color: Colors.black, width: 3)),
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
          buildColorButton(Colors.black),
          buildColorButton(Colors.red),
          buildColorButton(Colors.blueAccent),
          buildColorButton(Colors.green),
          const Divider(
            height: 10.0,
          ),
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
        selectedWidth = 200;
        selectedColor = Colors.grey.shade200;
        setState(() {});
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
    return Stack(children: [
      GestureDetector(
        onPanStart: _onPanStart,
        onPanUpdate: _onPanUpdate,
        onPanEnd: _onPanEnd,
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          color: Colors.grey.withOpacity(0.2),
          child: CustomPaint(
            painter: Sketcher(lines: lines),
          ),
        ),
      ),
      buildColorToolbar(),
      buildStrokeToolbar(),
    ]);
  }
}

class DrawnLine {
  final List<dynamic> path;
  final Color color;
  final double width;

  DrawnLine(this.path, this.color, this.width);
}
