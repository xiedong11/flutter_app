import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

/**
 * desc:
 * author: xiedong
 * date: 2/9/21
 **/

void main() {
  runApp(MaterialApp(
    home: ImageDemo(),
  ));
}

class ImageDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ImageDemo"),
      ),
      body: Image.asset("images/aaa.png")
    );
  }
}
