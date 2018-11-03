import 'package:flutter/material.dart';

void main() {
  runApp(new MaterialApp(title: 'd', home: new MyApp()));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
//        leading: new Icon(Icons.android),//由于Drawer会自动给appber加上leading，所以我们在这里需要把我们前面设置的leading给去掉
        centerTitle: true,
        //标题居中
        elevation: 10.0,
        //底部阴影
        title: new Text("title"),
      ),

//      endDrawer: new Drawer(), //右侧抽屉
      drawer: new Drawer(
        child: new Column(
          children: <Widget>[
            new UserAccountsDrawerHeader(
                decoration:new BoxDecoration(image: new DecorationImage(image:new NetworkImage("http://t2.hddhhn.com/uploads/tu/201612/98/st93.png") )),
                accountName: new Text("flutter"),
                accountEmail: new Text("flutter@hahah.com"),
                currentAccountPicture: new CircleAvatar(//CircleAvatar组件，是圆形头像
                  backgroundImage: new NetworkImage(
                      "http://tva2.sinaimg.cn/crop.0.3.707.707.180/a2f7c645jw8f6qvlbp1g7j20js0jrgrz.jpg"),)
            ),
            new ListTile(leading: new Icon(Icons.refresh),title: new Text("刷新"),),
            new ListTile(leading: new Icon(Icons.help),title: new Text("帮助"),),
            new ListTile(leading: new Icon(Icons.chat),title: new Text("会话"),),
            new ListTile(leading: new Icon(Icons.settings),title: new Text("设置"),),
          ],
        ),
      ),
    );
  }
}

//在Flutter当中，默认我我们预置了很多好用的Widget，比如UserAccountsDrawerHeader和ListTile 。借助于这些Widget我们可以快速的构建出一个漂亮的菜单页面

//elevation设置阴影宽度，child就是菜单区域
//const Drawer({
//Key key,
//this.elevation: 16.0,
//this.child,
//})
