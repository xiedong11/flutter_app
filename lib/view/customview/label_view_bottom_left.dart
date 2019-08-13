import 'package:flutter/material.dart';

/**
 * 在左下角绘制label
 */
class LabelViewBottomLeft extends CustomPainter{
  Paint _paint = Paint()
  ..color =Colors.lightBlue
  ..strokeWidth = 5.0
  ..style=PaintingStyle.fill;
  @override
  void paint(Canvas canvas, Size size) {
    Path path = Path();
//    path.moveTo(0, 100);  //把起始点移动到某个固定位置，开始画path
    path.lineTo(0, 200);
    path.lineTo(100, 200);
    path.lineTo(0,100);
    path.close();
    canvas.drawPath(path, _paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }

}