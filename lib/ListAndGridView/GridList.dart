import 'package:flutter/material.dart';

void main() {
  runApp(new MaterialApp(
    title: "ds",
    home: new MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text("fsdadsa"),
        ),
        body: new GridView.count(
          // Create a grid with 2 columns. If you change the scrollDirection to
          // horizontal, this would produce 2 rows.
          crossAxisCount: 3,
//          scrollDirection: Axis.horizontal,
          // Generate 100 Widgets that display their index in the List
          children: new List.generate(100, (index) {
            return new Container(
              alignment: Alignment.center,
//              color: Colors.red,
              child: new Text(
                'Item $index',
                style: Theme.of(context).textTheme.headline,
              ),
            );
          }),
        ),
      ),
    );
  }
}
