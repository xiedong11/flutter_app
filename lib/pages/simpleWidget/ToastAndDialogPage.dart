import 'package:flutter/material.dart';

class ToastAndDialogPage extends StatelessWidget {
  void _showSnackBarDialog(BuildContext context) {
    Scaffold.of(context).showSnackBar(new SnackBar(
      content: new Text("SanckBar is Showing "),
      action: new SnackBarAction(
          label: "撤销",
          onPressed: () {
            print("点击撤回---------------");
          }),
    ));
  }

  void _showAboutDialog(BuildContext context) {
    showDialog(
        context: context,
        builder: (context) {
          return AboutDialog(
            applicationIcon: Icon(Icons.android),
            applicationName: "Flutter",
            applicationVersion: "3.1.1",
            children: <Widget>[Text("更新摘要\n新增飞天遁地功能\n优化用户体验")],
          );
        });
  }

  //showModalBottomSheet与BottomSheet的区别是 BottomSheet充满屏幕，ModalBottomSheet半屏
  void _showModalBottomSheetDialog(BuildContext context) {
    showModalBottomSheet(
        context: context,
        builder: (BuildContext context) {
          return new Container(
            child: new Padding(
              padding: const EdgeInsets.all(10.0),
              child: new Column(
                children: <Widget>[
                  new ListTile(
                    leading: new Icon(Icons.chat),
                    title: new Text("开始会话"),
                  ),
                  new ListTile(
                    leading: new Icon(Icons.help),
                    title: new Text("操作说明"),
                  ),
                  new ListTile(
                    leading: new Icon(Icons.settings),
                    title: new Text("系统设置"),
                  ),
                  new ListTile(
                    leading: new Icon(Icons.more),
                    title: new Text("更多设置"),
                  ),
                ],
              ),
            ),
          );
        });
  }

  void _showBottomSheetDialog(BuildContext context) {
    showBottomSheet(
        context: context,
        builder: (BuildContext context) {
          return new Container(
            child: new Padding(
              padding: const EdgeInsets.all(10.0),
              child: new Column(
                children: <Widget>[
                  new ListTile(
                    leading: new Icon(Icons.chat),
                    title: new Text("开始会话"),
                  ),
                  new ListTile(
                    leading: new Icon(Icons.help),
                    title: new Text("操作说明"),
                  ),
                  new ListTile(
                    leading: new Icon(Icons.settings),
                    title: new Text("系统设置"),
                  ),
                  new ListTile(
                    leading: new Icon(Icons.more),
                    title: new Text("更多设置"),
                  ),
                ],
              ),
            ),
          );
        });
  }

  void _showSimpleDialog(BuildContext context) {
    showDialog(
        context: context,
        builder: (context) {
          return new SimpleDialog(
            title: new Text("标题"),
            contentPadding: const EdgeInsets.all(10.0),
            children: <Widget>[
              //SimpleDialog内可指定多个children
              new Text("内容1"),
              new ListTile(
                leading: new Icon(Icons.android),
                title: new Text("android"),
              ),
              new ListTile(
                leading: new Icon(Icons.android),
                title: new Text("andrpid"),
              ),
              new ListTile(
                leading: new Icon(Icons.cake),
                title: new Text("cake"),
              ),
              new ListTile(
                leading: new Icon(Icons.local_cafe),
                title: new Text("cofe"),
              ),
            ],
          );
        });
  }

  void _shwoAlertDialog(BuildContext context) {
    showDialog(
        context: context,
        builder: (context) {
          return new AlertDialog(
            title: new Text("标题"),
            content: new Text("内容区域"),
            actions: <Widget>[
              new FlatButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  child: new Text("确定")),
              new FlatButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                    print("点击取消------");
                  },
                  child: new Text("取消")),
            ],
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Toast-Dialog Page"),
      ),
      body: ListView(
        children: <Widget>[
          Text(
            "轻量级提示",
            textAlign: TextAlign.center,
            style: new TextStyle(fontSize: 20.0),
          ),
          new Tooltip(
              message: "Tooltip轻量级提示",
              child: Container(
                color: Colors.redAccent,
                alignment: Alignment.center,
                height: 40.0,
                child: new Text(
                  "Tooltip提示",
                  textAlign: TextAlign.center,
                ),
              ),
              verticalOffset: 80.0,
              //具体内部child Widget竖直方向的距离
              preferBelow: false,
              //是否显示在下面
              height: 100.0,
              //Tooltip的高度
              padding: EdgeInsets.symmetric(vertical: 50.0, horizontal: 50.0)),
          //值得注意的是这个context必须不能是Scaffold节点下的context,因为Scaffold.of（）
          // 方法需要从Widget树中去找到Scaffold的Context，所以如果直接在Scaffold中使用showSnackBar，
          // 需要在外城包括上Builder Widget，这个Builder不做任何的其他操作，只不过把Widget树往下移了一层而已。
          Builder(
            builder: (BuildContext context) {
              return MaterialButton(
                onPressed: () {
                  _showSnackBarDialog(context);
                },
                child: new Text("SnackBar"),
                color: Colors.redAccent,
              );
            },
          ),

          Text(
            "对话框提示",
            textAlign: TextAlign.center,
            style: new TextStyle(fontSize: 20.0),
          ),
          MaterialButton(
            onPressed: () {
              _showAboutDialog(context);
            },
            child: new Text("AboutDialog"),
            color: Colors.redAccent,
          ),
          MaterialButton(
            onPressed: () {
              _shwoAlertDialog(context);
            },
            child: new Text("AlertDialog"),
            color: Colors.redAccent,
          ),
          MaterialButton(
            onPressed: () {
              _showSimpleDialog(context);
            },
            child: new Text("SimpleDialog"),
            color: Colors.redAccent,
          ),

          //跟SnackBar不显示原理一样
          Builder(builder: (BuildContext context) {
            return MaterialButton(
              onPressed: () {
                _showBottomSheetDialog(context);
              },
              child: new Text("BottomSheetDialog"),
              color: Colors.redAccent,
            );
          }),
          MaterialButton(
            onPressed: () {
              _showModalBottomSheetDialog(context);
            },
            child: new Text("ModalBottomSheetDialog"),
            color: Colors.redAccent,
          ),
        ],
      ),
    );
  }
}
