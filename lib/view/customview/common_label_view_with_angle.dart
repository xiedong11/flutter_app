import 'package:flutter/material.dart';
import 'package:flutter_app/view/customview/LabelAlignment.dart';

/**
 * 可定制label显示的位置，颜色，尺寸(默认挖空顶角)
 */
class CommonLabelViewWithAngle extends StatefulWidget {
  final Size size;
  final Color labelColor;
  final labelAlignment;
  final bool withAngle;

  CommonLabelViewWithAngle(
      {this.size, this.labelColor, this.labelAlignment, this.withAngle});

  @override
  State<StatefulWidget> createState() {
    return ViewState();
  }
}

class ViewState extends State<CommonLabelViewWithAngle> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: widget.size.width,
      height: widget.size.height,
      color: Colors.grey,
      child: CustomPaint(
        size: widget.size,
        painter: LabelViewPainter(
            labelColor: widget.labelColor,
            withAngle: widget.withAngle,
            labelAlignmet: widget.labelAlignment),
      ),
    );
  }
}

class LabelViewPainter extends CustomPainter {
  var labelColor;
  var labelAlignmet;
  var _paint;
  var withAngle;

  LabelViewPainter({this.labelColor, this.labelAlignmet, this.withAngle}) {
    _paint = Paint()
      ..color = labelColor
      ..strokeWidth = 5.0
      ..style = PaintingStyle.fill;
  }

  @override
  void paint(Canvas canvas, Size size) {
    var drawSize = size.height > size.width ? size.width / 2 : size.height / 2;
    Path path = Path();
    switch (labelAlignmet) {
      case LabelAlignment.topLeft:
        if (withAngle) {
          path.lineTo(drawSize, 0);
          path.lineTo(drawSize / 2, 0);
          path.lineTo(0, drawSize / 2);
        }
        path.lineTo(0, drawSize);
        path.lineTo(drawSize, 0);
        break;

      case LabelAlignment.topRight:
//        path.moveTo(size.width-drawSize, 0);  1. 修改绘制起点
        path.lineTo(size.width - drawSize, 0);
        if (withAngle) {
          path.lineTo(size.width - drawSize / 2, 0);
          path.lineTo(size.width, drawSize / 2);
        }
        path.lineTo(size.width, 0);
        path.lineTo(size.width, drawSize);
        path.lineTo(
            size.width - drawSize, 0); //2.或者是path闭合，不然整个path路径相当于从（0,0）开始
        break;

      case LabelAlignment.bottomLeft:
        path.moveTo(0, size.height - drawSize);
        path.lineTo(0, size.height - drawSize);
        if (withAngle) {
          path.lineTo(0, size.height - drawSize / 2);
          path.lineTo(drawSize / 2, size.height);
        } else {
          path.lineTo(0, size.height);
        }

        path.lineTo(drawSize, size.height);
        break;

      case LabelAlignment.bottomRight:
        path.lineTo(size.width - drawSize, size.height);
        //挖空顶角
        if (withAngle) {
          path.lineTo(size.width - drawSize / 2, size.height);
          path.lineTo(size.width, size.height - drawSize / 2);
        } else {
          path.lineTo(size.width, size.height);
        }
        path.lineTo(size.width, size.height - drawSize);
        path.lineTo(size.width - drawSize, size.height);
        break;
    }
    path.close();
    canvas.drawPath(path, _paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }
}
