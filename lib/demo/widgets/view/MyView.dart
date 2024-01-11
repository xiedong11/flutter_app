import 'package:flutter/material.dart';


/**
 * 绘制各种基本图形
 */
class MyView extends CustomPainter {
  Paint _paint = new Paint()
    ..color = Colors.deepOrange
    ..strokeCap = StrokeCap.round
    ..strokeWidth = 5.0;

  @override
  void paint(Canvas canvas, Size size) {
    //绘制线条
    canvas.drawLine(Offset(0.0, 0.0), Offset(120.0, 120.0), _paint);
    canvas.drawLine(Offset(120.0, 120.0), Offset(200.0, 50.0), _paint);

//    //绘制点
//    canvas.drawPoints(
//        PointMode.points,
//        [
//          Offset(20, 20),
//          Offset(100.0, 100.0),
//          Offset(100.0, 200.0),
//          Offset(200.0, 200.0),
//          Offset(200.0, 100.0),
//          Offset(280.0, 20.0),
//          Offset(20, 20),
//        ],
//        _paint);

    //绘制实心圆
    canvas.drawCircle(
        Offset(120.0, 120.0), 25.0, _paint..color = Colors.lightGreen);
    //绘制圆环
    canvas.drawCircle(
        Offset(220.0, 220.0),
        25.0,
        _paint
          ..color = Colors.lightGreen
          ..style = PaintingStyle.stroke);

    //绘制矩形
//    fromPoints(Offset a, Offset b)
//    使用左上和右下角坐标来确定矩形的大小和位置
    canvas.drawRect(
        Rect.fromPoints(Offset(30.0, 30.0), Offset(60.0, 60.0)), _paint);

    //    fromCircle({ Offset center, double radius })
//    使用圆的圆心点坐标和半径和确定外切矩形的大小和位置
    canvas.drawRect(
        Rect.fromCircle(center: Offset(160.0, 50.0), radius: 20), _paint);

//    fromLTRB(double left, double top, double right, double bottom)
//    使用矩形左边的X坐标、矩形顶部的Y坐标、矩形右边的X坐标、矩形底部的Y坐标来确定矩形的大小和位置
    canvas.drawRect(Rect.fromLTRB(100.0, 150.0, 150.0, 250.0), _paint);

//    fromLTWH(double left, double top, double width, double height)
//    使用矩形左边的X坐标、矩形顶部的Y坐标矩形的宽高来确定矩形的大小和位置
    canvas.drawRect(Rect.fromLTWH(160.0, 150.0, 50.0, 100.0), _paint);

    //绘制椭圆   绘制椭圆只需要传入Rect和paint即可
    canvas.drawOval(Rect.fromLTWH(160.0, 300.0, 50.0, 100.0), _paint);

    //绘制圆弧  圆环扫过的弧度为弧度不是角度，
    double PI = 3.1415926;
    canvas.drawArc(Rect.fromCircle(center: Offset(100.0, 310.0), radius: 50.0),
        0.0, PI / 2, false, _paint); //绘制1/4圆弧

    //绘制圆角矩形
    Rect rect = Rect.fromCircle(center: Offset(100.0, 400.0), radius: 60.0);
    RRect rRect = RRect.fromRectAndRadius(rect, Radius.circular(15.0));
    canvas.drawRRect(rRect, _paint);

    //绘制双圆角矩形
    Rect rectOuter =
        Rect.fromCircle(center: Offset(260.0, 400.0), radius: 60.0);
    Rect rectInner =
        Rect.fromCircle(center: Offset(260.0, 400.0), radius: 40.0);
    RRect rRectOuter =
        RRect.fromRectAndRadius(rectOuter, Radius.circular(15.0));
    RRect rRectInner =
        RRect.fromRectAndRadius(rectInner, Radius.circular(15.0));
    //实现内外两层圆角矩形，可以分开指定内外矩形的圆角大小
    canvas.drawDRRect(rRectOuter, rRectInner, _paint);


  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}


/**
 * 自定义的view从根本也不是一个Widget，所以也没法直接在Widget tree中去构建，
 * 所以这个时候就要借助与CustomPaint来给我们自定义的CustomPainter来做渲染。
    CustomPaint就是继承于SingleChildRenderObjectWidget的一个Widget，
    使用时你只需要传入你自定义的CustomPainter即可，当然CustomPaint也可以传入自己的
    child widget来完成Widget的组合。

    //样例
    body: new CustomPaint(
    painter: new MyView(),
    ));

 */
