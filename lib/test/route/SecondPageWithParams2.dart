import 'package:flutter/material.dart';

class SecondPageWithParams2 extends StatelessWidget {
  String title;

  SecondPageWithParams2(this.title);

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text(title),
      ),
      body: new Center(
        child: new Text(title),
      ),
    );
  }
}
