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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("TextField"),
      ),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: TextField(
          inputFormatters: [
            WhitelistingTextInputFormatter(RegExp("[a-z]")),
            WhitelistingTextInputFormatter(RegExp("[0-9]")),
            LengthLimitingTextInputFormatter(11)
          ],
          decoration: InputDecoration(
            hintText: "请输入手机号...",
          ),
        ),
      ),
    );
  }
}
