import 'package:flutter/material.dart';

void main() {
  runApp(new MaterialApp(home: new MyApp()));
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new MyState();
  }
}

class MyState extends State<MyApp> {
  List gridDate = [];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    for (int i = 0; i < 30; i++) {
      gridDate.add(i);
    }
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("GridView"),
      ),
      body: new GridView.builder(
        gridDelegate: new SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3, //设置每行的个数
            mainAxisSpacing: 10.0, //设置上下item间隔
            crossAxisSpacing: 10.0, //设置左右item间隔
            childAspectRatio: 1.0),
        itemBuilder: (BuildContext context, int index) {
          return new MyItemWidget(gridDate[index]);
        },
        itemCount: gridDate.length,
      ),
    );
  }
}

class MyItemWidget extends StatelessWidget {
  final int index;

  MyItemWidget(this.index);

  @override
  Widget build(BuildContext context) {
    return new Column(
      children: <Widget>[
        new Container(
          child: new Icon(
            Icons.cake,
            size: 50.0,
          ),
          color: Colors.blue,
        ),
        new Text("条目$index")
      ],
    );
  }
}
