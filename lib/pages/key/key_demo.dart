import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/pages/key/box.dart';

/**
 * desc:
 * author: xiedong
 * date: 2021/11/30
 **/
class KeyDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Key Demo")),
      body: Column(
          children: [
            Box(Colors.red,key: ValueKey(1)),
            Box(Colors.black,key: ValueKey(2)),
          ]
      ),
    );
  }
}