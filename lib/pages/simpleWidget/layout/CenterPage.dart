import 'package:flutter/material.dart';

//Center既中心定位控件，能够将子控件放在其内部中心。
class CenterLayoutPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('中心布局'),
      ),
      body: new Center(
        child: new Text('Center布局使用比较简单，场景也比较单一，一般用于协助其他子widget布局，包裹其child widget显示在上层布局的中心位置'),
      ),
    );
  }
}
