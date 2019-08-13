import 'package:flutter/material.dart';
import 'package:flutter_app/view/customview/label_view_top_left.dart';
import 'package:flutter_app/view/customview/label_view_top_right.dart';

import 'customview/common_label_view.dart';
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
            CommonLabelView(size: Size(100, 400),labelColor: Colors.red,labelAlignment: LabelAlignment.bottomRight,)
          ],
        ));
  }
}
