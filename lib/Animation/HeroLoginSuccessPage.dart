import 'package:flutter/material.dart';

void main() {
  runApp(new MaterialApp(home: new LoginSuccessPage()));
}

class LoginSuccessPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("登录成功"),
      ),
      body: new ListView(
        shrinkWrap: true,
        children: <Widget>[
          new Hero(
              tag: "hero",
              child: new Padding(
                padding: EdgeInsets.all(16.0),
                child: CircleAvatar(
                  radius: 70.0,
                  child: Image.asset("images/a.png"),
                ),
              )),
        ],
      )
    );
  }
}
