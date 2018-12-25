import 'package:flutter/material.dart';

class SecondPageWithParams extends StatelessWidget {
  final title;
  final String content;

  SecondPageWithParams(this.title, this.content);

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(title: new Text(title)),
      body: new Center(
        child: new Text(content),
      ),
    );
  }
}
