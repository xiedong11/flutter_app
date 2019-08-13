import 'package:flutter/material.dart';

/*
在屏幕左上角绘制一个label
 */
class LabelViewTopLeft extends CustomPainter {
  var _paint;

  LabelViewTopLeft() {
    _paint = Paint()
      ..color = Colors.pinkAccent
      ..strokeCap = StrokeCap.round //笔触样式
      ..isAntiAlias = true
      ..style = PaintingStyle.fill //填充满
//      ..style = PaintingStyle.stroke  //空芯
      ..strokeWidth = 5.0;
  }

  @override
  void paint(Canvas canvas, Size size) {
    Path path = Path();
    path.lineTo(100, 0);
    path.lineTo(0, 100);
    path.close();
    canvas.drawPath(path, _paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }
}
