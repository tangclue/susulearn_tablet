import 'dart:ui';

import 'package:flutter/material.dart';

import '../Screens/example_screen.dart';

class Sketcher extends CustomPainter {
  final List<DrawnLine> lines;

  Sketcher({required this.lines});

  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint()
      ..color = Colors.redAccent
      ..strokeCap = StrokeCap.round
      ..strokeWidth = 5.0;

    for (int i = 0; i < lines.length; i++) {
      if (lines[i] == null) continue;

      if (lines[i].path.length == 1) {
        paint.color = lines[i].color;
        paint.strokeWidth = lines[i].width;
        canvas.drawPoints(PointMode.points, [lines[i].path[0]], paint);
      } else {
        for (int j = 0; j < lines[i].path.length - 1; j++) {
          if (lines[i].path[j] != null && lines[i].path[j + 1] != null) {
            paint.color = lines[i].color;
            paint.strokeWidth = lines[i].width;
            canvas.drawLine(lines[i].path[j], lines[i].path[j + 1], paint);
            // }
          }
        }
      }
    }
  }

  @override
  bool shouldRepaint(Sketcher oldDelegate) {
    return true;
  }
}
