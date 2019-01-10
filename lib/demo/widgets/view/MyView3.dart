import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class MyView3 extends SingleChildRenderObjectWidget {
  @override
  RenderObject createRenderObject(BuildContext context) {
    return new CircleViewRenderBox();
  }
}

class CircleViewRenderBox extends RenderConstrainedBox {

  CircleViewRenderBox():super(additionalConstraints:const BoxConstraints.expand());
  //hitTestSelf 相应事件是否是当前View，用来处理事件的分发
  @override
  bool hitTestSelf(Offset position) {
    return true;
  }

  //handleEvent用来处理用户触摸事件
  @override
  void handleEvent(PointerEvent event, HitTestEntry entry) {
    super.handleEvent(event, entry);
  }

  //paint 用来对Vidget进行绘制
  @override
  void paint(PaintingContext context, Offset offset) {
//    super.paint(context, offset);

    Paint _paint = new Paint()
      ..color = Colors.red
      ..strokeCap = StrokeCap.round
      ..isAntiAlias = true
      ..style = PaintingStyle.stroke
      ..strokeWidth = 5.0;

    context.canvas.drawCircle(Offset(105, 100), 80.0, _paint);
  }
}


