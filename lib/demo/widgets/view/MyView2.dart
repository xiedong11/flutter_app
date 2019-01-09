import 'package:flutter/material.dart';

class MyView2 extends CustomPainter {
  Paint _paint = new Paint()
    ..color = Colors.deepOrange
    ..style = PaintingStyle.stroke
    ..strokeWidth = 6.0
    ..strokeCap = StrokeCap.round;

  @override
  void paint(Canvas canvas, Size size) {
    Path path = new Path();
    path.lineTo(100.0, 200.0);
    canvas.drawPath(path, _paint);

    //利用path绘制一个大写字符E
    Path ePath = new Path();
    ePath.moveTo(200.0, 100.0);
    ePath.lineTo(300.0, 100.0);
    ePath.moveTo(200.0, 100.0);
    ePath.lineTo(200.0, 180.0);
    ePath.lineTo(300.0, 180.0);
    ePath.moveTo(200.0, 180.0);
    ePath.lineTo(200.0, 260.0);
    ePath.lineTo(300.0, 260.0);
    canvas.drawPath(ePath, _paint);

    //二阶贝塞尔曲线
    Path path2 = new Path();
    path2.arcTo(
        Rect.fromCircle(center: Offset(100, 100), radius: 80), 0, 3.14, false);
    canvas.drawPath(path2, _paint);

    //二阶贝塞尔绘制圆
    Path path3 = new Path();
    path3.arcTo(
        Rect.fromCircle(center: Offset(100, 300), radius: 80), 0, 6.28, false);
    canvas.drawPath(path3, _paint);

    //利用三阶贝塞尔曲线绘制心形
    Path pathRight = new Path();

    var width = 200;
    var height = 300;
    pathRight.moveTo(width / 2, height / 4);
    pathRight.cubicTo((width * 6) / 7, height / 9, (width * 12) / 13,
        (height * 2) / 5, width / 2, (height * 7) / 12);
    canvas.drawPath(pathRight, _paint);

    Path pathleft = new Path();
    pathleft.moveTo(width / 2, height / 4);
    pathleft.cubicTo(width / 7, height / 9, width / 13, (height * 2) / 5,
        width / 2, (height * 7) / 12);
    canvas.drawPath(pathleft, _paint);

    //绘制图片drawImage
    Image image = Image.network("");
    //TODO 
//    canvas.drawImage(image, Offset(350.0, 350.0), _paint);


    //绘制颜色drawColor
    canvas.drawCircle(Offset(200, 400), 50.0, _paint);
    //改变之前图形颜色
    canvas.drawColor(Colors.blueGrey, BlendMode.color);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return null;
  }
}
//http://flutter.link/2018/10/23/%E8%87%AA%E5%AE%9A%E4%B9%89View%E3%80%902%E3%80%91/
