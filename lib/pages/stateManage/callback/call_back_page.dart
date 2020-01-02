import 'package:flutter/material.dart';
import 'package:flutter_app/pages/stateManage/state_manage.dart';

class CallBackPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => PageState();
}

class PageState extends State<CallBackPage> {
  var _stateInfo = "初始值";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("方法回调"),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[Text(_stateInfo), ButtonWithCallBack("跳转下一页", updataInfo)],
      ),
    );
  }

  void updataInfo() {
    setState(() {
      _stateInfo="311314";
    });
    print("------------");
  }
}

class ButtonWithCallBack extends StatelessWidget {
  Function _funCallBack;
  var _title;

  ButtonWithCallBack(this._title, this._funCallBack);

  @override
  Widget build(BuildContext context) {
    return FlatButton(
      child: Text(_title),
      onPressed: () {
        Navigator.of(context)
            .push(new MaterialPageRoute(builder: (context) => StateManage()))
            .then((res) {
          _funCallBack();
        });
      },
      color: Colors.black12,
    );
  }
}
