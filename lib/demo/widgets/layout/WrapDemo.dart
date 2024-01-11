import 'package:flutter/material.dart';

void main() {
  runApp(new MaterialApp(home: new WrapDemo()));
}

class WrapDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: new AppBar(title: new Text("Wrap布局")),
        body: new Wrap(
          direction: Axis.horizontal,
          //布局排列方向
          alignment: WrapAlignment.spaceEvenly,
          //内容排序方式
          spacing: 10.0,
          //两个widget之间横向的间隔
          runSpacing: 0.0,
          //两个widget之间纵向的间隔，当为纵向时则为横向间隔
          children: <Widget>[
            new MyButton("第一个"),
            new MyButton("第一个"),
            new MyButton("第一个"),
            new MyButton("第一个"),
            new MyButton("第一个"),
            new MyButton("第一个"),
            new MyButton("第一个"),
            new MyButton("第一个"),
            new MyButton("第一个"),
            new FormButton("第二种"),
            new FormButton("第二种"),
            new FormButton("第二种"),
            new FormButton("第二种"),
            new FormButton("第二种"),
          ],
        ));
  }
}

class MyButton extends StatelessWidget {
  final String text;

  MyButton(this.text);

  @override
  Widget build(BuildContext context) {
    return new Container(
      child: new ElevatedButton(
        onPressed: () {
          ScaffoldMessenger.of(context).showSnackBar(new SnackBar(
            content: new Text(text),
            action: new SnackBarAction(label: "撤回", onPressed: () {}),
          ));
        },
        child: new Text(text),
      ),
    );
  }
}

/**
 * 带边框的按钮
 */
class FormButton extends StatelessWidget {
  String text;

  FormButton(this.text);

  @override
  Widget build(BuildContext context) {
    return new Container(
      margin: EdgeInsets.only(left: 3.0, right: 3.0),
      child: OutlinedButton(
        onPressed: () {},
        child: new Text(text),
        style: ButtonStyle(

        ),
        // highlightedBorderColor: Colors.redAccent,
        // //按钮点下去的颜色
        // borderSide: new BorderSide(
        //   color: Colors.lightBlue,
        //   width: 2.0,
        //   style: BorderStyle.solid,
        // ),
        // disabledBorderColor: Colors.grey,
      ),
    );
  }
}

//
//Wrap({
//Key key,
//this.direction = Axis.horizontal,//方向
//this.alignment = WrapAlignment.start,//内容排序方式
//this.spacing = 0.0,//两个widget之间横向的间隔
//this.runAlignment = WrapAlignment.start,
//this.runSpacing = 0.0,两个widget之间纵向的间隔，当为纵向时则为横向间隔
//this.crossAxisAlignment = WrapCrossAlignment.start,
//this.textDirection,//文字排序方向
//this.verticalDirection = VerticalDirection.down,//direction为Vertical时排序顺序
//List<Widget> children = const <Widget>[],//test.widgets
//})

//alignment: WrapAlignment.start,//内容排序从左到右排列
//alignment: WrapAlignment.end,//内容排序 从右到左排列
//alignment: WrapAlignment.center,//内容排序居中排列
//alignment: WrapAlignment.spaceBetween,//
//alignment: WrapAlignment.spaceAround,//
//alignment: WrapAlignment.spaceEvenly,//
