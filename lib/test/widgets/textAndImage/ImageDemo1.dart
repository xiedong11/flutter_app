import 'package:flutter/material.dart';

void main() {
  runApp(new MaterialApp(
    title: '图片',
    home: new ImageDemo(),
  ));
}

class ImageDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: new AppBar(
          title: new Text('从网络获取图片'),
        ),
        body: new Center(
          child: new Image.network(
            'http://pic.baike.soso.com/p/20130828/20130828161137-1346445960.jpg',
            scale: 3.0,
          ),
        ));
  }
}
