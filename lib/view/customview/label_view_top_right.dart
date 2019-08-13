import 'package:flutter/material.dart';

/**
 * 在屏幕右上角绘制label
 */
class LabelViewTopRight extends CustomPainter {
  Paint _paint = Paint()
    ..color = Colors.orange
    ..strokeWidth = 3.0
    ..style = PaintingStyle.fill;

  @override
  void paint(Canvas canvas, Size size) {
    Path path = Path();
    path.lineTo(200, 0);
    path.lineTo(200, 100);
    path.lineTo(100, 0);
    path.close();
    canvas.drawPath(path, _paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }
}
