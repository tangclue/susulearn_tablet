import 'dart:async';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:susulearn_tablet/Constants/gaps.dart';

import '../features/sketcher.dart';

class DrawingWidgets extends StatefulWidget {
  const DrawingWidgets({super.key});

  @override
  State<DrawingWidgets> createState() => _DrawingWidgetsState();
}

class _DrawingWidgetsState extends State<DrawingWidgets> {
  Color selectedColor = Colors.black;
  double selectedWidth = 1;
  List<DrawnLine> lines = <DrawnLine>[];
  DrawnLine line = DrawnLine([], Colors.black, 0);
  bool _isErasing = false;

  StreamController<List<DrawnLine>> linesStreamController =
      StreamController<List<DrawnLine>>.broadcast();
  StreamController<DrawnLine> currentLineStreamController =
      StreamController<DrawnLine>.broadcast();

  void _onPanStart(DragStartDetails details) {
    print('User started drawing');
    final box = context.findRenderObject() as RenderBox;
    final point = box.globalToLocal(details.globalPosition);

    line = DrawnLine([point], selectedColor, selectedWidth);

    currentLineStreamController.add(line);
  }

  void _onPanUpdate(DragUpdateDetails details) {
    final box = context.findRenderObject() as RenderBox;
    final point = box.globalToLocal(details.globalPosition);

    final path = List.from(line.path)..add(point);
    line = DrawnLine(path, selectedColor, selectedWidth);
    if (_isErasing) {
      if (lines.isNotEmpty) {
        for (var linetemp in lines) {
          Offset vectStart = (point - (linetemp.path.first));
          Offset vectLast = (point - (linetemp.path.last));
          Offset vectMid = (vectStart + vectLast) / 2;

          double lenStart2 = vectStart.distanceSquared;
          double lenLast2 = vectLast.distanceSquared;
          double lenMid2 = vectMid.distanceSquared;
          double minLen2 = min(lenStart2, min(lenLast2, lenMid2));
          if (minLen2 < pow(selectedWidth, 2) / 10) {
            lines.remove(linetemp);
            print("erased!!");
            continue;
          }
        }
      }
    }
    // print(point);
    // print(point - const Offset(2, 3));

    currentLineStreamController.add(line);
    linesStreamController.add(lines);
  }

  void _onPanEnd(DragEndDetails details) {
    // final path = List.from(line.path)..add(null);
    if (!_isErasing) {
      lines.add(line);
      linesStreamController.add(lines);
    } else {
      line = DrawnLine([], Colors.white, 0);

      currentLineStreamController.add(line);
    }
    // lines.add(line);
  }

  void _clear() {
    setState(() {
      lines = [];
      line = DrawnLine([], Colors.black, 0);
      selectedWidth = 1;
      selectedColor = Colors.black;
      _isErasing = false;
    });
  }

  @override
  Widget buildColorButton(Color color) {
    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: FloatingActionButton(
        heroTag: '$color',
        mini: true,
        backgroundColor: color,
        shape: Border.all(color: Colors.black),
        child: Container(),
        onPressed: () {
          setState(() {
            selectedColor = color;
            selectedWidth = 1;

            _isErasing = false;
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
          width: strokeWidth * 10,
          height: strokeWidth * 10,
          decoration: BoxDecoration(
              color: selectedColor,
              borderRadius: BorderRadius.circular(30.0),
              border: Border.all(color: Colors.black, width: 3)),
        ),
      ),
    );
  }

  Widget buildColorToolbar() {
    return Positioned(
      top: 120.0,
      right: 10.0,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          buildClearButton(),
          const Divider(
            height: 10.0,
          ),
          // buildColorButton(Colors.black,),
          // buildColorButton(Colors.red),
          // buildColorButton(Colors.blueAccent),
          // buildColorButton(Colors.green),
          const Divider(
            height: 10.0,
          ),
          buildEraserButton(),
          Gaps.v20,
          buildStrokeButton(1.0),
          buildStrokeButton(3.0),
          buildStrokeButton(5.0),
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
        selectedWidth = 100;
        selectedColor = Colors.grey.withOpacity(0.1);
        _isErasing = true;
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

  Widget buildAllPaths(BuildContext context) {
    return RepaintBoundary(
      child: SizedBox(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: StreamBuilder<List<DrawnLine>>(
          stream: linesStreamController.stream,
          builder: (context, snapshot) {
            return CustomPaint(
              painter: Sketcher(
                lines: lines,
              ),
            );
          },
        ),
      ),
    );
  }

  Widget buildCurrentPath(BuildContext context) {
    return GestureDetector(
      onPanStart: _onPanStart,
      onPanUpdate: _onPanUpdate,
      onPanEnd: _onPanEnd,
      child: RepaintBoundary(
        child: SizedBox(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: StreamBuilder<DrawnLine>(
              stream: currentLineStreamController.stream,
              builder: (context, snapshot) {
                return CustomPaint(
                  painter: Sketcher(lines: [line]),
                );
              }),
          // CustomPaint widget will go here
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      buildAllPaths(context),
      buildCurrentPath(context),
      buildColorToolbar(),
    ]);
  }
}

class DrawnLine {
  final List<dynamic> path;
  final Color color;
  final double width;

  DrawnLine(this.path, this.color, this.width);
}
