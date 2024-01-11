import 'package:flutter/material.dart';

class ButtonPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Button Widget"),
      ),
      floatingActionButton: new FloatingActionButton(
          onPressed: () {}, child: new Icon(Icons.adb), tooltip: "点击"),
      body: new ListView(
        children: <Widget>[
          new Text("简单样式",
              textAlign: TextAlign.center,
              style: new TextStyle(color: Colors.brown, fontSize: 20.0)),
          new ElevatedButton(onPressed: () {}, child: new Text("ElevatedButton")),
          new TextButton(onPressed: () {}, child: new Text("TextButton")),
          new MaterialButton(
              onPressed: () {}, child: new Text("MaterialButton")),
          new RawMaterialButton(
              onPressed: () {}, child: new Text("RawMaterialButton")),
          new OutlinedButton(onPressed: () {}, child: new Text("OutlineButton")),
          new SizedBox(height: 20),
          new Text("升级样式",
              textAlign: TextAlign.center,
              style: new TextStyle(color: Colors.brown, fontSize: 20.0)),
          new ElevatedButton(
            style: ButtonStyle(
              //按钮的背景颜色
              backgroundColor: MaterialStateProperty.all(Colors.blueAccent),
              padding: MaterialStateProperty.all(EdgeInsets.all(15.0)),

            ),
            // color: Colors.blueAccent,
            // //按钮的背景颜色
            // padding: EdgeInsets.all(15.0),
            // //按钮距离里面内容的内边距
            // textColor: Colors.white,
            // //文字的颜色
            // textTheme: ButtonTextTheme.normal,
            // //按钮的主题
            // onHighlightChanged: (bool b) {
            //   //水波纹高亮变化回调
            // },
            // disabledTextColor: Colors.black54,
            // //按钮禁用时候文字的颜色
            // disabledColor: Colors.black54,
            // //按钮被禁用的时候显示的颜色
            // highlightColor: Colors.green,
            // //点击或者toch控件高亮的时候显示在控件上面，水波纹下面的颜色
            // splashColor: Colors.amberAccent,
            // //水波纹的颜色
            // colorBrightness: Brightness.light,
            // //按钮主题高亮
            // elevation: 10.0,
            // //按钮下面的阴影
            // highlightElevation: 10.0,
            // //高亮时候的阴影
            // disabledElevation: 10.0,
            // //按下的时候的阴影
            // shape: new RoundedRectangleBorder(
            //     borderRadius: BorderRadius.circular(20.0)),
            //设置形状
            onPressed: () {},
            child: new Text("ElevatedButton"),
          ),
          new TextButton(
              // color: Colors.lightGreen,
              // textColor: Colors.red,
              onPressed: () {}, child: new Text("TextButton")),
          new OutlinedButton(
            // textColor: Colors.blue,
            // highlightedBorderColor: Colors.deepOrange,
            // shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
            // borderSide: new BorderSide(color: Colors.blueAccent),
            onPressed: () {},
            child: new Text("OutlineButton")
          ),
          MaterialButton(
              color: Colors.yellow,
              textColor: Colors.red,
            onPressed: () {},
            child: new Text("MaterialButton")
          ),
          RawMaterialButton(
            fillColor: Colors.deepOrange,
            onPressed: () {},
            child: new Text("RawMaterialButton",style: new TextStyle(color: Colors.white),)
          )
        ],
      ),
    );
  }
}
