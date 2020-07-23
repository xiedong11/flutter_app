import 'package:flutter/cupertino.dart';

/**
 * @desc  公用margin组件
 * @author xiedong
 * @date   2020-02-24.
 */

class Margin extends StatelessWidget {
  double width, height;

  Margin({this.width = 0, this.height = 0});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      width: width,
    );
  }
}
