import 'package:flutter/material.dart';

void main() {
  runApp(new MaterialApp(title: 'd', home: new MyApp()));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: new AppBar(
          title: new Text("title"),
        ),
        body: new Table(
          border: new TableBorder.all(color: Colors.red), //边界线
          children: <TableRow>[
            new TableRow(
                children: [new Text("姓名",textAlign: TextAlign.center), new Text("职位",textAlign: TextAlign.center), new Text("部门",textAlign: TextAlign.center)]),
            new TableRow(children: [
              new Text("小红"),
              new Text("android开发"),
              new Text("研发")
            ]),
            new TableRow(children: <Widget>[
              //此处泛型加不加都行
              new Text("小红"),
              new Text("android开发"),
              new Text("研发")
            ]),
            new TableRow(children: [
              new Text("小红"),
              new Text("android开发"),
              new Text("研发")
            ]),
            new TableRow(
                children: [new Text("小龙"), new Text("UI"), new Text("美工")]),
          ],
        ));
  }
}


//Table({
//Key key,
//this.children: const <TableRow>[],
//this.columnWidths,//列宽
//this.defaultColumnWidth: const FlexColumnWidth(1.0),
//this.textDirection,//文字方向
//this.border,//边框
//this.defaultVerticalAlignment: TableCellVerticalAlignment.top,//对齐方式
//this.textBaseline//基线
//})