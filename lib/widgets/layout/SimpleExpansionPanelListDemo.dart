import 'package:flutter/material.dart';

void main() {
  runApp(new MaterialApp(home: new ExpansionPanelListDemo()));
}

class ExpansionPanelListDemo extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => new MyState();
}

class MyState extends State {
  var isExpanded = true;

  _expansionCallback(index, isExpanded) {
    setState(() {
      if (this.isExpanded == isExpanded) {
        this.isExpanded = !this.isExpanded;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: new AppBar(
          title: new Text("可折叠列表"),
        ),
        body: new SingleChildScrollView(
          child: new ExpansionPanelList(
            children: [
              ExpansionPanel(
                headerBuilder: (index, opened) {
                  return ListTile(
                    title: new Text("更多内容"),
                  );
                },
                body: new Padding(
                  padding: EdgeInsets.all(20.0),
                  child: Container(
                    height: 100.0,
                    color: Colors.blue,
                    alignment: Alignment.center,
                    child: Icon(
                      Icons.security,
                      size: 35.0,
                    ),
                  ),
                ),
                isExpanded: isExpanded, //默认是不展开，利用判断，点击是否展开
              )
            ],
            expansionCallback: (index, isExpanded) {
              _expansionCallback(index, isExpanded);
            },
          ),
        ));
  }
}
//http://flutter.link/2018/10/10/ExpansionPanelList/
