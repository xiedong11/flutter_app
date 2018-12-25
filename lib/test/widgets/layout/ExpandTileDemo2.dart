import 'package:flutter/material.dart';

/**
 *界面整体上是一个listView,在ListView的第二例是一个ExpansionTile，
 * ExpansionTile的内部是多个ListTile，trailing结合自定义动画将“+”icon旋转22.5°
 * 变成了一个“×”，并且在ExpansionTile展开时改变了icon的颜色
 */
void main() {
  runApp(new MaterialApp(home: new ExPansionTileDemo2()));
}

class ExPansionTileDemo2 extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => MyState();
}

class MyState extends State with SingleTickerProviderStateMixin {
  Animation _animation;
  Color _iconColor = Colors.grey;
  AnimationController _animationController;

  @override
  void initState() {
    super.initState();
    _animationController = new AnimationController(
        vsync: this, duration: new Duration(milliseconds: 200));
    _animation =
        new Tween(begin: 0.0, end: 0.125).animate(_animationController);
  }

  void  _changeOpacity(bool isExpand){
    setState(() {
      if(isExpand){
        _animationController.forward();
        _iconColor = Colors.red;
      }else{
        _animationController.reverse();
        _iconColor = Colors.grey;
      }
    });

  }
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("可折叠列表"),
      ),
      body: new ListView(
        children: <Widget>[
          new ListTile(title: new Text("第1列")),
          new ExpansionTile(
            onExpansionChanged: (bool){
              _changeOpacity(bool);
            },
            title: new Text("第2列"),
            children: <Widget>[
              new Text("折叠区域内容"),
              new Icon(
                Icons.picture_as_pdf,
                size: 40.0,
                color: Colors.green,
              )
            ],
            trailing: new RotationTransition(
              turns: _animation,
              child: new Icon(
                Icons.add,
                color: _iconColor,
              ),
            ),
          ),
          new ListTile(title: new Text("第3列")),
          new ListTile(title: new Text("第4列")),
          new ListTile(title: new Text("第5列")),
          new ListTile(title: new Text("第6列")),
          new ListTile(title: new Text("第7列")),
          new ListTile(title: new Text("第8列")),
        ],
      ),
    );
  }
}
