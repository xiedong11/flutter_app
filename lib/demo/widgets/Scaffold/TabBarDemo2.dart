import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(new MaterialApp(home: new TabBarDemo()));
}

class TabBarDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      home: new DefaultTabController(
          length: tabsList.length,
          child: new Scaffold(
            appBar: new AppBar(
              title: new Text("TabBarDemo"),
              bottom: new TabBar(
                  labelColor: Colors.orange,
                  unselectedLabelColor: Colors.white,
                  tabs: tabsList.map((Tabs tabs) {
                    return new Tab(
                      text: tabs.title,
                      icon: new Icon(tabs.icon),
                    );
                  }).toList()),
            ),
            body: new TabBarView(
              children: tabsList.map((Tabs choice) {
                print("-----" + choice.title);
                return new Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: new MyTabView(choice),
                );
              }).toList(),
            ),
          )),
    );
  }
}

class Tabs {
  String title;
  IconData icon;

  Tabs(this.title, this.icon);
}

List<Tabs> tabsList = [
  Tabs("1", Icons.title),
  Tabs("2", Icons.list),
  Tabs("3", Icons.location_city),
  Tabs("4", Icons.android),
  Tabs("5", Icons.phone),
];

class MyTabView extends StatelessWidget {
  Tabs tabs;

  MyTabView(this.tabs);

//  MyTabView({ Key key, this.tabs }) : super(key: key);  构造方法的第二种初始化方式

  @override
  Widget build(BuildContext context) {
    TextStyle textStyle = Theme.of(context).textTheme.displaySmall!;
    return new Card(
      color: Colors.white,
      child: new Center(
        child: new Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            new Icon(tabs.icon, size: 128.0, color: textStyle.color),
            new Text(tabs.title, style: textStyle),
          ],
        ),
      ),
    );
  }
}
