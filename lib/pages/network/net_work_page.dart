import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

class NetWorkPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => SimpleRequestState();
}

class RequestUtilState extends State<NetWorkPage>{
  var resultJson = "";

  @override
  void initState() {
    super.initState();
  }

  getRequest() async {
    Response response = await Dio()
        .get('https://www.wanandroid.com/banner/json');
    this.setState(() {
      resultJson = response.toString();
    });
  }

  postRequest() async {
    var path = "https://www.wanandroid.com/user/register";
    var params = {
      "username": "aa112233",
      "password": "123456",
      "repassword": "123456"
    };
    Response response =
    await Dio().post(path, queryParameters: params);
    this.setState(() {
      resultJson = response.toString();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Dio网络请求"),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          MaterialButton(
              color: Colors.pinkAccent,
              child: Text("GET 请求"),
              onPressed: () {
                getRequest();
              }),
          MaterialButton(
              color: Colors.blueAccent,
              child: Text("POST 请求"),
              onPressed: () {
                postRequest();
              }),
          Expanded(
              child: Padding(
                padding: EdgeInsets.all(20),
                child: Center(
                  child: resultJson.length <= 0
                      ? Text("数据加载中...")
                      : Text(
                    resultJson,
                    style: TextStyle(fontSize: 16),
                  ),
                ),
              ))
        ],
      ),
    );
  }

}


class SimpleRequestState extends State<NetWorkPage> {
  var resultJson = "";

  @override
  void initState() {
    super.initState();
  }

  getRequest() async {
    Response response = await Dio()
        .get('https://www.wanandroid.com/banner/json');
    this.setState(() {
      resultJson = response.toString();
    });
  }

  postRequest() async {
    var path = "https://www.wanandroid.com/user/register";
    var params = {
      "username": "aa112233",
      "password": "123456",
      "repassword": "123456"
    };
    Response response =
        await Dio().post(path, queryParameters: params);
    this.setState(() {
      resultJson = response.toString();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Dio网络请求"),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          MaterialButton(
              color: Colors.pinkAccent,
              child: Text("GET 请求"),
              onPressed: () {
                getRequest();
              }),
          MaterialButton(
              color: Colors.blueAccent,
              child: Text("POST 请求"),
              onPressed: () {
                postRequest();
              }),
          Expanded(
              child: Padding(
            padding: EdgeInsets.all(20),
            child: Center(
              child: resultJson.length <= 0
                  ? Text("数据加载中...")
                  : Text(
                      resultJson,
                      style: TextStyle(fontSize: 16),
                    ),
            ),
          ))
        ],
      ),
    );
  }
}
