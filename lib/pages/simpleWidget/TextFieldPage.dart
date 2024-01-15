import 'package:flutter/material.dart';


class TextFieldPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new MyAppState();
  }
}

class MyAppState extends State<TextFieldPage> {
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
          title: new Text("登录"),
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
            /**
             * 在 Flutter 中 Builder 组件的作用是解决 Scaffold.of 找不到上下文问题的解决文案
             *
             * 1.Builder 控件的作用，我的理解是在于重新提供一个新的子 context ，通过新的 context 关联到相关祖先从而达到正常操作的目的。
             *  2.同样的对于路由跳转 Navigator.of(context)【注：Navigator 是由 MaterialApp 提供的】 等类似的问题，采用的都是类似的原理，只要搞懂了其中一个，其他的都不在话下！
             *
             *
             * TODO tips 20240115
             *  新版本的Flutter采用ScaffoldMessenger.of的形式，不存在此问题？？？
             */
            new Builder(builder: (BuildContext context) {
              return new ElevatedButton(
                onPressed: () {
                  if (_userPasswordController.text.toString() == "10086" &&
                      _userPhoneController.text.toString() == "10086") {
                    ScaffoldMessenger.of(context)
                        .showSnackBar(new SnackBar(content: new Text("校验通过")));
                  } else {
                    ScaffoldMessenger.of(context)
                        .showSnackBar(
                        new SnackBar(content: new Text("校验有问题，请重新输入")));
                    onTextClear(); //情况输入内容，让用户重新输入
                  }
                },
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.blue)
                ),
                // color: Colors.blue,
                // highlightColor: Colors.deepPurple,
                // disabledColor: Colors.cyan,
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