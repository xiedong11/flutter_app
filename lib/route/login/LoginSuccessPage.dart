import 'package:flutter/material.dart';

class LoginSuccessPage extends StatelessWidget {
  final userName;

  LoginSuccessPage(this.userName);

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("DynamicPage"),
      ),
      body: new Center(
          child: new Text("登录成功，欢迎新用户:$userName")),
    );
  }
}