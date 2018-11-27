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

      bottomNavigationBar: new BottomNavigationBar(
        items: [
          new BottomNavigationBarItem(
              icon: new Icon(Icons.shopping_cart), title: new Text("购物车")),
          new BottomNavigationBarItem(
              icon: new Icon(Icons.message), title: new Text("会话")),
          new BottomNavigationBarItem(
              icon: new Icon(Icons.person), title: new Text("我的"))
        ],
        fixedColor: Colors.cyan,
        iconSize: 20.0,
        currentIndex: 2,
      ),
    );
  }
}


//BottomNavigationBar金支持0-4个之间个底部按钮数量，超出4个系统将会报异常
//默认0-3个底部按钮数量时，BottomNavigationBar采用fixed的模式摆放底部按钮，当超过4个时默认使用shifting模式摆放底部按钮
//BottomNavigationBar({
//Key key,
//@required this.items,//List<BottomNavigationBarItem>
//this.onTap,//tap事件
//this.currentIndex: 0,//当前位置
//BottomNavigationBarType type,//底部item类型，fixed自适应，shifting选择放大
//this.fixedColor,选中颜色
//this.iconSize: 24.0,//图标大小
//})

//
//构造方法很简单，大家自己看参数备注，默认需要传入BList参数，我们还是来看下BottomNavigationBarItem
//
//const BottomNavigationBarItem({
//@required this.icon,
//@required this.title,
//this.backgroundColor,
//})
