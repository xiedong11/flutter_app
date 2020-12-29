import 'package:flutter/material.dart';
import 'package:flutter_app/demo/lifecycle/LifeCycleDemo.dart';

void main() {
  runApp(MaterialApp(
    home: TextFieldDemo(),
  ));
}

class TextFieldDemo extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return PageState();
  }
}

class PageState extends State<TextFieldDemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("组件生命周期"),
      ),
      body: Center(
        child: RaisedButton(
            child: Text('测试组件生命周期'),
            onPressed: () => {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (buildContext) => LifeCycleDemo()))
                }),
      ),
    );
  }
}
