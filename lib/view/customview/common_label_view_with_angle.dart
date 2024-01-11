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
  final String labelText;
  final TextStyle? textStyle;

  //sdk升级到2.12以上之后，那么就会执行空安全检查
//  在字段前面加required修饰符，或者TextStyle? textStyle加上“？”可选参数，也就是加问号 ?.
//  但是此方法有一个弊端, 问号表示允许为null，后续调用该参数时，
//  所有用到的地方都得加感叹号（断言符号）用于先判断该参数是否为空.
//  赋值时,需要使用双问号以防止其值是null时给其一个默认值
  CommonLabelViewWithAngle(
      {required this.size,
      required this.labelColor,
      this.labelAlignment,
      required this.withAngle,
      this.labelText = "hot",
      this.textStyle });

  @override
  State<StatefulWidget> createState() {
    return ViewState();
  }
}

class ViewState extends State<CommonLabelViewWithAngle> {
  static final double PI = 3.1415926;
  var textAngle;
  var textAlignment;

  var offset;

  @override
  Widget build(BuildContext context) {
    var offsetX = widget.size.width > widget.size.height
        ? widget.size.height / 4.5
        : widget.size.width / 4.5;

    switch (widget.labelAlignment) {
      case LabelAlignment.topLeft:
        offset = Offset(offsetX, 0);
        textAlignment = Alignment.topLeft;
        textAngle = -PI / 4;
        break;
      case LabelAlignment.topRight:
        offset = Offset(-offsetX, 0);
        textAlignment = Alignment.topRight;
        textAngle = PI / 4;
        break;
      case LabelAlignment.bottomLeft:
        offset = Offset(offsetX, 0);
        textAlignment = Alignment.bottomLeft;
        textAngle = PI / 4;
        break;
      case LabelAlignment.bottomRight:
        offset = Offset(-offsetX, 0);
        textAlignment = Alignment.bottomRight;
        textAngle = -PI / 4;
        break;
    }

    return Container(
      width: widget.size.width,
      height: widget.size.height,
      color: Colors.grey,
      child: CustomPaint(
        child: Align(
          alignment: Alignment.topRight,
          child: Transform.rotate(
            angle: textAngle,
            child: Text(
              widget.labelText,
              style: widget.textStyle == null
                  ? TextStyle(color: Colors.white)
                  : widget.textStyle,
            ),
            origin: offset,
          ),
        ),
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
