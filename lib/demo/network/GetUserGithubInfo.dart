import 'package:flutter/material.dart';
import 'package:flutter_app/demo/network/User.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

void main() {
  runApp(new MaterialApp(home: new GetUserInfo()));
}

class GetUserInfo extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MyUserInfoState();
  }
}

class MyUserInfoState extends State {
  TextEditingController _userNameController = new TextEditingController();
  User user;

  void getUserInfo(String userName) {
    http.get("https://api.github.com/users/$userName").then((response) {
      setState(() {
        final responseJson = json.decode(response.body);
        user = new User.fromJson(responseJson);
      });
    }).catchError((errorInfo) {
      setState(() {
        user = null;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("获取用户信息"),
      ),
      body: new Center(
        child: new Column(
          children: <Widget>[
            CircleAvatar(
                backgroundImage: new NetworkImage(user != null
                    ? user.avatar_url
                    : "http://tva2.sinaimg.cn/crop.0.3.707.707.180/a2f7c645jw8f6qvlbp1g7j20js0jrgrz.jpg")),
            MyListTitle(
                Icons.person, "name:" + (user != null ? user.name : "暂无")),
            MyListTitle(Icons.location_city,
                "locitation:" + (user != null ? user.location : "暂无")),
            MyListTitle(Icons.tab, "blog:" + (user != null ? user.blog : "暂无")),
            MyListTitle(Icons.http,
                "html_url:" + (user != null ? user.html_url : "暂无")),
            TextField(
              controller: _userNameController,
              decoration: new InputDecoration(
                  labelText: "请输入你的github用户名",
                  contentPadding: const EdgeInsets.all(10.0)),
            ),
            RaisedButton(
              onPressed: () {
                getUserInfo(_userNameController.value.text.toString());
              },
              child: new Text("获取详细信息"),
            )
          ],
        ),
      ),
    );
  }
}

class MyListTitle extends StatelessWidget {
  IconData icons;
  String title;

  MyListTitle(this.icons, this.title);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: new Icon(icons),
      title: new Text(title),
    );
  }
}
