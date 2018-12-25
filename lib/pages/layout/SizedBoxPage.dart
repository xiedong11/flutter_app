import 'package:flutter/material.dart';


class SizedBoxPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('SizedBox布局'),
      ),
      body: new SizedBox(
        width: 200.0,
        height: 200.0,
        child: new Container(
          decoration: new BoxDecoration(color: Colors.red),
        ),
      ),
    );
  }
}
