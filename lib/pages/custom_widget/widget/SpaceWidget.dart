import 'package:flutter/material.dart';

/**
 * @desc   分割线
 * @author xiedong
 * @date   2020-02-24.
 */

class SpaceWidget extends StatelessWidget {
  double height, width;

  SpaceWidget({
    this.height = 1,
    this.width = 1,
  }) : super();

  @override
  Widget build(BuildContext context) {
    return
       Container(

        height: height,
        width: width,
        color: Colors.transparent,
    );
  }
}
