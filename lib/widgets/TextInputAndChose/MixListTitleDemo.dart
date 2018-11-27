import 'package:flutter/material.dart';

void main() {
  runApp(new MaterialApp(home: new MyApp()));
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => new MyAppState();
}

class MyAppState extends State<MyApp> {
  //CheckBoxListTitle相关属性方法声明
  bool _isChecked = false;

  void _onCheckBoxStateChanged(bool value) {
    setState(() {
      _isChecked = value;
      print(_isChecked.toString() + '-------------------');
    });
  }

  //RadioListTitle相关属性方法声明
  int _radioCurrentIndex = 0;

  void _onRadioCheckedChange(int value) {
    setState(() {
      _radioCurrentIndex = value;
    });
  }

//  SwitchListTile相关属性方法声明
  bool _isSwitchchecked = false;

  void _onSwitchStateChange(bool value) {
    setState(() {
      _isSwitchchecked = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("选择控件"),
      ),
      body: new Center(
        child: new Column(
          children: <Widget>[
            new CheckboxListTile(
              value: _isChecked,
              title: new Text("新版本自动下载"),
              secondary: new Icon(Icons.print),
              subtitle: new Text("仅在wifi下生效"),
              onChanged: _onCheckBoxStateChanged,
            ),
            new Divider(
              //分割线
              height: 0.7,
              color: Colors.grey,
              indent: 10.0,
            ),
            new RadioListTile(
              value: 0,
              groupValue: _radioCurrentIndex,
              onChanged: _onRadioCheckedChange,
              secondary: new Icon(Icons.android),
              title: new Text("android 7.0"),
              subtitle: new Text("234M"),
            ),
            new RadioListTile(
                value: 1,
                controlAffinity: ListTileControlAffinity.trailing,
                //图标相对于文字的位置
                groupValue: _radioCurrentIndex,
                secondary: new Icon(Icons.android),
                title: new Text("android 8.0"),
                subtitle: new Text("934M"),
                onChanged: _onRadioCheckedChange),
            new RadioListTile(
                value: 2,
                groupValue: _radioCurrentIndex,
                title: new Text("android 9.0"),
                subtitle: new Text("2204M"),
                secondary: new Icon(Icons.android),
                onChanged: _onRadioCheckedChange),
            new Divider(
              //分割线
              height: 0.7,
              color: Colors.grey,
              indent: 10.0,
            ),
            new SwitchListTile(
              value: _isSwitchchecked,
              onChanged: _onSwitchStateChange,
              activeColor: Colors.red,
              title: new Text("新消息提醒"),
              subtitle: new Text("2条未读"),
              secondary: new Icon(Icons.message),
            )
          ],
        ),
      ),
    );
  }
}
