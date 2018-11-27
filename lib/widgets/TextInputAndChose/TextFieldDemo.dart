import 'package:flutter/material.dart';

void main() {
  runApp(new MaterialApp(home: new MyApp()));
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    TextEditingController _userPhoneController = new TextEditingController();
    TextEditingController _userPasswordController = new TextEditingController();

    /**
     * 清空输入框内容
     */
    void onTextClear() {
      setState(() {
        _userPhoneController.text = "";
        _userPasswordController.text = "";
      });
    }

    return new Scaffold(
        appBar: new AppBar(
          title: new Text("fsdsdfs"),
        ),
        body: new Column(
          children: <Widget>[
            new TextField(
              controller: _userPhoneController,
              keyboardType: TextInputType.number,
              decoration: new InputDecoration(
                  contentPadding: const EdgeInsets.all(10.0),
                  icon: new Icon(Icons.phone),
                  labelText: "请输入手机号",
                  helperText: "注册时填写的手机号"),
              onChanged: (String str) {
                //onChanged是每次输入框内每次文字变更触发的回调
                print('手机号为：$str----------');
              },
              onSubmitted: (String str) {
                //onSubmitted是用户提交而触发的回调{当用户点击提交按钮（输入法回车键）}
                print('最终手机号为:$str---------------');
              },
            ),
            new TextField(
              controller: _userPasswordController,
              keyboardType: TextInputType.text,
              decoration: new InputDecoration(
                  contentPadding: const EdgeInsets.all(10.0),
                  icon: new Icon(Icons.nature_people),
                  labelText: "请输入名字",
//                  hintText: "fdsfdss",
                  helperText: "注册名字"),
            ),
            new Builder(builder: (BuildContext context) {
              return new RaisedButton(
                onPressed: () {
                  if (_userPasswordController.text.toString() == "10086" &&
                      _userPhoneController.text.toString() == "10086") {
                    Scaffold.of(context)
                        .showSnackBar(new SnackBar(content: new Text("校验通过")));
                  } else {
                    Scaffold.of(context)
                        .showSnackBar(new SnackBar(content: new Text("校验有问题，请重新输入")));
                    onTextClear(); //情况输入内容，让用户重新输入
                  }
                },
                color: Colors.blue,
                highlightColor: Colors.deepPurple,
                disabledColor: Colors.cyan,
                child: new Text(
                  "登录",
                  style: new TextStyle(color: Colors.white),
                ),
              );
            })
          ],
        ));
  }
}

//const TextField({
//Key key,
//this.controller,//控制器，控制TextField文字
//this.focusNode,
//this.decoration: const InputDecoration(),//输入器装饰
//TextInputType keyboardType: TextInputType.text,//输入的类型
//this.style,
//this.textAlign: TextAlign.start,//对齐方式
//this.autofocus: false,
//this.obscureText: false,//是否隐藏输入
//this.autocorrect: true,
//this.maxLines: 1,
//this.maxLength,
//this.maxLengthEnforced: true,
//this.onChanged,//文字改变触发
//this.onSubmitted,//文字提交触发（键盘按键）
//this.inputFormatters,
//})
