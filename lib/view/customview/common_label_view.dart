import 'package:flutter/material.dart';

import 'LabelAlignment.dart';

/**
 * 可定制label显示的位置，颜色，尺寸
 */
class CommonLabelView extends StatefulWidget {
  final Size size;
  final Color labelColor;
  final labelAlignment;

  CommonLabelView({required this.size, required this.labelColor, this.labelAlignment});

  @override
  State<StatefulWidget> createState() {
    return ViewState();
  }
}

class ViewState extends State<CommonLabelView> {
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
            labelAlignmet: widget.labelAlignment),
      ),
    );
  }
}

class LabelViewPainter extends CustomPainter {
  var labelColor;
  var labelAlignmet;
  var _paint;

  LabelViewPainter({this.labelColor, this.labelAlignmet}) {
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
        path.lineTo(0, drawSize);
        path.lineTo(drawSize, 0);
        break;

      case LabelAlignment.topRight:
//        path.moveTo(size.width-drawSize, 0);  1. 修改绘制起点
        path.lineTo(size.width - drawSize, 0);
        path.lineTo(size.width, 0);
        path.lineTo(size.width, drawSize);
        path.lineTo(
            size.width - drawSize, 0); //2.或者是path闭合，不然整个path路径相当于从（0,0）开始
        break;

      case LabelAlignment.bottomLeft:
        path.moveTo(0, size.height - drawSize);
        path.lineTo(0, size.height - drawSize);
        path.lineTo(0, size.height);
        path.lineTo(drawSize, size.height);
        break;

      case LabelAlignment.bottomRight:
        path.lineTo(size.width-drawSize, size.height);
        path.lineTo(size.width, size.height);
        path.lineTo(size.width, size.height - drawSize);
        path.lineTo(size.width-drawSize, size.height);
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

