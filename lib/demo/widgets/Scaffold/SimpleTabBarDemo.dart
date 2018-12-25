import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(new MaterialApp(home: new TabBarDemo()));
}

class TabBarDemo extends StatelessWidget {
  List<Widget> list = [
    new Text("页面1"),
    new Text("页面2"),
    new Text("页面3"),
    new Text("页面4"),
  ];

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      home: new DefaultTabController(
          length: list.length,
          child: new Scaffold(
            appBar: new AppBar(
              title: new Text("TabBar"),
              bottom: new TabBar(
                tabs: list,
                indicatorColor: Colors.brown,
                unselectedLabelColor: Colors.yellowAccent,
                labelColor: Colors.red,
              ),
            ),
            body: new TabBarView(children: list),
          )),
    );
  }
}
//TabBar
//还是首先来你看下构造方法吧
//const TabBar({
//Key key,
//@required this.tabs,//WidgetList，一般使用系统提供的Tab作为Widget哦
//this.controller,//控制器
//this.isScrollable: false,//总内容超出自动宽展区域并可以滚动
//this.indicatorColor,//指示器颜色
//this.indicatorWeight: 2.0,指示器宽度
//this.indicatorPadding: EdgeInsets.zero,//指示器padding
//this.indicator,//自定义指示器
//this.indicatorSize,//指示器大小
//this.labelColor,//文字颜色
//this.labelStyle,//文字style
//this.unselectedLabelColor,//未选中文字颜色
//this.unselectedLabelStyle,//未选中文字style
//})
//其中只有tabs参数势必须的，其他的参数都会根据你app的主题曲自动设置相应的参数。
//
//那么这个Tab又是什么东西呢？我们还是再来看下Tab的构造方法吧
//const Tab({
//Key key,
//this.text,
//this.icon,
//this.child,
//})
//相比于TabBar，Tab这个WIdget就显得非常简单，他就是一个最基本的组件，我们 可以选择性的填入text，icon或者子Widget
//
//我们仅仅使用这两个组件就可以显示一个TabBar可以了，但是如果想要做到TabBar与下面内容区域的关联还需要用到TabView这个Widget哦。
//
//TabView实际上就是用来关联Tab与内容区域的一个中间件。