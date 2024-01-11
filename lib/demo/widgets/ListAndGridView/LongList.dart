import 'package:flutter/material.dart';

void main() {
  runApp(new MaterialApp(
    title: "dsf",
    home: new MyApp(
        items: new List<String>.generate(10000, (i) => "Item $i")),
  ));
}

class MyApp extends StatelessWidget {
  List<String> items;

  MyApp({Key? key, required this.items}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: new AppBar(
          title: new Text("list"),
        ),
        body: new ListView.builder(
            itemCount: items.length,
            itemBuilder: (context, index) {
              return new ListTile(
                title: new Container(
                  height: 120.0,
                  color: Colors.deepPurple,
                  alignment: Alignment.center, //内容居中
                  child: new Text('Item${items[index]}',
                    style: new TextStyle(
                      fontSize: 25.0,
                      color: Colors.white,
                    ),
                  ),
                ),
              );
            }));
  }
}
