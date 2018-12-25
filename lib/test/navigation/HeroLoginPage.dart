import 'package:flutter/material.dart';
import 'package:flutter_app/test/Animation/HeroLoginSuccessPage.dart'; //导入路由页

void main() {
  runApp(new MaterialApp(home: new HeroAnimatedLoginPage()));
}

class HeroAnimatedLoginPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MyState();
  }
}

class MyState extends State {
  var _isLogin = false;

  /**
   * 处理登录逻辑
   */
  onLoginClick() {
    Future.delayed(new Duration(seconds: 2), () {
      Navigator.of(context)
          .push(new MaterialPageRoute(builder: (BuildContext context) {
        return LoginSuccessPage();
      }));
      _isLogin = false;
    });
    setState(() {
      _isLogin = true;
    });
  }

  @override
  Widget build(BuildContext context) {
    var loginButtonWidget;
    if (_isLogin) {
      loginButtonWidget = new CircularProgressIndicator();
    } else {
      loginButtonWidget = Text('登录', style: TextStyle(color: Colors.white));
    }
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Hero Login"),
      ),
      backgroundColor: Colors.white70,
      body: new Center(
        child: new ListView(
          shrinkWrap: true,
          padding: EdgeInsets.only(left: 24.0, right: 24.0),
          children: <Widget>[
            new Hero(
                tag: "hero",
                child: CircleAvatar(
                  backgroundColor: Colors.transparent,
                  radius: 40.0,
                  child: Image.asset('images/a.png'),
                )),
            new SizedBox(height: 20.0),
            new TextFormField(
              autofocus: false,
              obscureText: true,
              decoration: InputDecoration(
                  hintText: "请输入账号",
                  contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
                  border: new OutlineInputBorder(
                      borderRadius: BorderRadius.circular(32.0))),
            ),
            new SizedBox(height: 20.0),
            new TextField(
              autofocus: false,
              obscureText: true,
              keyboardType: TextInputType.text,
              decoration: new InputDecoration(
                  hintText: "请输入密码",
                  contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
                  border: new OutlineInputBorder(
                      borderRadius: BorderRadius.circular(32.0))),
            ),
            new Padding(
              padding: EdgeInsets.symmetric(vertical: 16.0),
              child: Material(
                borderRadius: BorderRadius.circular(30.0),
                elevation: 5.0,
                shadowColor: Colors.lightBlueAccent.shade100,
                color: Colors.lightBlueAccent,
                child: new MaterialButton(
                  onPressed: onLoginClick,
                  minWidth: 200.0,
                  height: 40.0,
                  child: loginButtonWidget,
                ),
              ),
            ),
            new SizedBox(height: 20.0),
            new FlatButton(
              child: Text(
                '忘记密码?',
                style: TextStyle(color: Colors.black54),
              ),
              onPressed: () {},
            )
          ],
        ),
      ),
    );
  }
}
//http://flutter.link/2018/05/11/Flutter%E5%8A%A8%E7%94%BB%E3%80%901%E3%80%91/
