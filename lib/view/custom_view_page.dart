import 'package:flutter/material.dart';
import 'package:flutter_app/view/customview/label_view_top_left.dart';
import 'package:flutter_app/view/customview/label_view_top_right.dart';

import 'customview/LabelAlignment.dart';
import 'customview/common_label_view.dart';
import 'customview/common_label_view_with_angle.dart';
import 'customview/label_view_bottom_left.dart';
import 'customview/label_view_bottom_right.dart';

class CustomViewPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('自定义View'),
        ),
        body: Column(
          children: <Widget>[
            CustomPaint(
              painter: LabelViewTopLeft(),
            ),
            CustomPaint(
              painter: LabelViewTopRight(),
            ),
            CustomPaint(
              painter: LabelViewBottomLeft(),
            ),
            CustomPaint(
              painter: LabelViewBottomRight(),
            ),
//            CommonLabelView(size: Size(100, 400),labelColor: Colors.red,labelAlignment: LabelAlignment.bottomLeft,)
//            CommonLabelView(size: Size(100, 400),labelColor: Colors.red,labelAlignment: LabelAlignment.bottomLeft,)
            CommonLabelView(
              size: Size(100, 200),
              labelColor: Colors.red,
              labelAlignment: LabelAlignment.bottomRight,
            ),
            CommonLabelView(
              size: Size(300, 50),
              labelColor: Colors.pinkAccent,
              labelAlignment: LabelAlignment.bottomRight,
            ),

            //label 顶角挖空效果
            CommonLabelViewWithAngle(
              size: Size(300, 50),
              labelColor: Colors.red,
              labelAlignment: LabelAlignment.bottomRight,
              withAngle: true,
            ),
            CommonLabelViewWithAngle(
              size: Size(300, 50),
              labelColor: Colors.yellowAccent,
              labelAlignment: LabelAlignment.topLeft,
              withAngle: true,
            ),
            CommonLabelViewWithAngle(
              size: Size(300, 50),
              labelColor: Colors.red,
              labelAlignment: LabelAlignment.topRight,
              withAngle: true,
            ),
            SizedBox(height: 20),
            CommonLabelViewWithAngle(
              size: Size(300, 170),
              labelColor: Colors.blueAccent,
              labelAlignment: LabelAlignment.bottomLeft,
              withAngle: true,
            ),
          ],
        ));
  }
}
