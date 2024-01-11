import 'package:flutter/material.dart';

void main() {
  runApp(new MaterialApp(home:new MyApp(),theme:
  new ThemeData(primaryColor: Colors.red, ),
  ));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(appBar:
    new AppBar(title: new Text("Hello Flutter")),
        floatingActionButton: new FloatingActionButton(
            onPressed: null,
            backgroundColor: Colors.blueAccent,
            child: new Text("点我",style: new TextStyle(color: Colors.white),)
        ),
        endDrawer: new Drawer(child: new Center(child: new Text("我是菜单"),),),
        body: new Center(
            child: new Text("Hello Flutter")
        )
    );
  }
}
//
//const Text(this.data//内容, {
//Key key,
//this.style//样式
//this.textAlign//对齐方式,
//this.textDirection//文本方向,
//this.softWrap//是否换行显示,
//this.overflow//超出文本的处理方式,
//this.textScaleFactor//每个逻辑像素的字体像素数，控制字体大小,
//this.maxLines//最大行数,
//})
//当然，每次非必填参数基本都有一个默认值，具体默认值是什么大家可以点击进去源码看下哦。
//
//Text构造方法需要传入一个必须的参数data，也就是String类型的内容。
//
//style需要传入需要传入一个TextStyle对象，决定Text的颜色、字体、字体大小、行间距、字体样式等。
//
//TextStyle的构造方法如下：
//
//const TextStyle({
//this.inherit: true,
//this.color//颜色,
//this.fontSize//大小，默认10像素,
//this.fontWeight,
//this.fontStyle,
//this.letterSpacing//字间距,
//this.wordSpacing//字符间距,
//this.textBaseline,
//this.height,
//this.decoration,
//this.decorationColor,
//this.decorationStyle,
//this.debugLabel,
//String fontFamily//字体,
//String package,
//})
//textAlign文本的对齐方式，【left：左对齐】、【right：右对齐】、【center：居中对齐】、【justify：自适应】、【start：文本开头，和textDirection有关】、【end：文本结尾，，和textDirection有关】
//
//textDirection文本方向，【rtl:right to left 从右向左】、【ltr:left to right 从左向右】
//
//overflow超出屏幕，是否换行显示 bool，传入true则换行，传入false这不换行
//
//textScaleFactor传入double值，值越大字体大小越大，默认为1.0
//
//maxLines最大显示行数