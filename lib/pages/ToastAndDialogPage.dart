import 'package:flutter/material.dart';

class ToastAndDialogPage extends StatelessWidget {
  void _shwoAlertDialog(BuildContext context) {
    showDialog(
        context: context,
        child: new AlertDialog(
          title: new Text("标题"),
          content: new Text("内容区域"),
          actions: <Widget>[
            new FlatButton(
                onPressed: () {
                  Navigator.of(context);
                },
                child: new Text("确定")),
            new FlatButton(
                onPressed: () {
                  print("点击取消------");
                },
                child: new Text("取消")),
          ],
        ));
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Toast-Dialog Page"),
      ),
      body: ListView(
        children: <Widget>[
          MaterialButton(
            onPressed: () {
              _shwoAlertDialog(context);
            },
            child: new Text("AlertDialog"),
            color: Colors.redAccent,
            shape: new RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(20.0))),
          )
        ],
      ),
    );
  }
}
