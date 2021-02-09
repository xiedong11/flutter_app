import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

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
  var _textFieldEditController = TextEditingController(text: "138");

  @override
  void initState() {
    super.initState();
    _textFieldEditController.addListener(() {
      print("当前输入框内的值为：" + _textFieldEditController.text);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("TextField"),
      ),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: TextField(
          controller: _textFieldEditController,
          decoration: InputDecoration(
            hintText: "请输入手机号...",
          ),
        ),
      ),
    );
  }
}
