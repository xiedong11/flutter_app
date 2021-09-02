import 'dart:async';
import 'dart:math';
import 'package:flutter/material.dart';

/**
 * desc:自定义view
 * author: xiedong
 * date: 2021/9/2
 **/

void main() {
  runApp(MaterialApp(
    // home: CustomTriangleView(),
    home: AutoChangeColorCircleView(),
  ));
}




class AutoChangeColorCircleView extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => ViewState();
}

class ViewState extends State<AutoChangeColorCircleView> {
  var _colorArr = [
    Colors.amberAccent,
    Colors.blue,
    Colors.deepOrange,
    Colors.cyan,
    Colors.black,
    Colors.deepPurple,
  ];
  var _color;

  @override
  void initState() {
    super.initState();
    int count = 0;
    var period = Duration(seconds: 1);
    // print('currentTime='+DateTime.now().toString());
    Timer.periodic(period, (timer) {
      print('----颜色值改变---');
      this.setState(() {
        _color = _colorArr[Random().nextInt(4)];
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("自定义VIEW"),
      ),
      body: CustomPaint(
        painter: AutoChangeColorCircle(_color),
      ),
    );
  }
}

class AutoChangeColorCircle extends CustomPainter {
  var _paint;

  AutoChangeColorCircle(_color) {
    _paint = Paint()
      ..color = _color //画笔颜色
      ..strokeCap = StrokeCap.round //画笔笔触类型
      ..isAntiAlias = true //是否启动抗锯齿
      ..blendMode = BlendMode.exclusion //颜色混合模式
      ..style = PaintingStyle.fill //绘画风格，默认为填充
      ..colorFilter = ColorFilter.mode(Colors.blueAccent,
          BlendMode.exclusion) //颜色渲染模式，一般是矩阵效果来改变的,但是flutter中只能使用颜色混合模式
      ..maskFilter = MaskFilter.blur(BlurStyle.inner, 3.0) //模糊遮罩效果，flutter中只有这个
      ..filterQuality = FilterQuality.high //颜色渲染模式的质量
      ..strokeWidth = 15.0; //画笔的宽度
  }

  @override
  void paint(Canvas canvas, Size size) {
    //利用path绘制三角形
    // Path path = Path();
    // path.lineTo(100, 0);
    // path.lineTo(0, 100);
    // path.close();
    // canvas.drawPath(path, _paint);

    //利用drawCircle圆心坐标点为（100, 100），半径为50的实心圆
    print('----------图像被重绘制');
    canvas.drawCircle(Offset(100, 100), 50, _paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}


/**
 * 静态view  shouldRepaint返回false
 */
class CustomTriangleView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("自定义VIEW"),
      ),
      body: CustomPaint(
        painter: TriangleView(),
      ),
    );
  }
}


class TriangleView extends CustomPainter {
  var _paint;

  TriangleView() {
    _paint = Paint()
      ..color = Colors.blueAccent //画笔颜色
      ..strokeCap = StrokeCap.round //画笔笔触类型
      ..isAntiAlias = true //是否启动抗锯齿
      ..blendMode = BlendMode.exclusion //颜色混合模式
      ..style = PaintingStyle.fill //绘画风格，默认为填充
      ..colorFilter = ColorFilter.mode(Colors.blueAccent,
          BlendMode.exclusion) //颜色渲染模式，一般是矩阵效果来改变的,但是flutter中只能使用颜色混合模式
      ..maskFilter = MaskFilter.blur(BlurStyle.inner, 3.0) //模糊遮罩效果，flutter中只有这个
      ..filterQuality = FilterQuality.high //颜色渲染模式的质量
      ..strokeWidth = 15.0; //画笔的宽度
  }

  @override
  void paint(Canvas canvas, Size size) {
    //利用path绘制三角形
    // Path path = Path();
    // path.lineTo(100, 0);
    // path.lineTo(0, 100);
    // path.close();
    // canvas.drawPath(path, _paint);

    //利用drawCircle圆心坐标点为（100, 100），半径为50的实心圆
    canvas.drawCircle(Offset(100, 100), 50, _paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}
