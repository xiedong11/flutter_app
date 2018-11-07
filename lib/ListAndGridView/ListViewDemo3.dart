import 'package:flutter/material.dart';

/**
 * 封装MyListItem，提高Listview 条目的公用性
 */
void main() {
  runApp(new MaterialApp(home: new MyApp()));
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  final List<ListItem> listData = [];

  @override
  void initState() {
    super.initState();
    for (int i = 0; i < 20; i++) {
      listData.add(new ListItem("条目$i", Icons.accessibility));
    }
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("listview"),
      ),
      body: new ListView.builder(
        itemBuilder: (BuildContext context, int index) {
          return new MyListItem(listData[index]);
        },
        itemCount: listData.length,
      ),
    );
  }
}

/**
 * 构建ListItem实体
 */
class ListItem {
  final String title;
  final IconData iconData;

  ListItem(this.title, this.iconData);
}

class MyListItem extends StatelessWidget {
  final ListItem listItem;

  MyListItem(this.listItem);

  @override
  Widget build(BuildContext context) {
    return new Column(children: <Widget>[
      new ListTile(
        title: new Text(listItem.title),
        leading: new Icon(listItem.iconData),
      ),
      new Divider(
        height: 1.0,
        indent: 15.0,
      )
    ]);
  }
}
