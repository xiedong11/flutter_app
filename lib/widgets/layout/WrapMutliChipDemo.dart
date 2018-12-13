import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(new MaterialApp(home: new MutliChipDemo()));
}

class MutliChipDemo extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new MyState();
  }
}

class MyState extends State {
  final List<MyChipWidget> listData = [];
  final List<Icon> icons = [];

  /**
   * 返回颜色随机值
   */
  Color _randomColor() {
    var red = Random.secure().nextInt(255);
    var green = Random.secure().nextInt(255);
    var blue = Random.secure().nextInt(255);
    return Color.fromARGB(255, red, green, blue);
  }

  @override
  void initState() {
    super.initState();
    icons.add(Icon(Icons.delete_forever, color: _randomColor()));
    icons.add(Icon(Icons.message, color: _randomColor()));
    icons.add(Icon(Icons.print, color: _randomColor()));
    icons.add(Icon(Icons.add, color: _randomColor()));
    icons.add(Icon(Icons.security, color: _randomColor()));
    icons.add(Icon(Icons.cake, color: _randomColor()));
    icons.add(Icon(Icons.http, color: _randomColor()));
    icons.add(Icon(Icons.location_city, color: _randomColor()));
    icons.add(Icon(Icons.apps, color: _randomColor()));

    for (int i = 0; i < 20; i++) {
      listData.add(new MyChipWidget("add$i", _randomColor(),
          icons[Random.secure().nextInt(icons.length)], _removeChip));
    }
  }

  void _addChip(MyChipWidget chip) {
    setState(() {
      listData.add(chip);
    });
  }

  void _removeChip(MyChipWidget chip) {
    setState(() {
      listData.remove(chip);
    });
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("MutliChipDemo"),
        actions: <Widget>[
          new IconButton(
              icon: new Icon(
                Icons.add,
                color: Colors.white,
                size: 35.0,
              ),
              onPressed: () {
                _addChip(new MyChipWidget("add", _randomColor(),
                    icons[Random.secure().nextInt(icons.length)], _removeChip));
              })
        ],
      ),
      body: new Wrap(
        children: listData,
        spacing: 5.0,
        runSpacing: 5.0,
//          direction : Axis.vertical,
        alignment:  WrapAlignment.spaceAround,
      ),
    );
  }
}

class MyChipWidget extends StatelessWidget {
  final tipText;
  final color;
  final avatar;

  var callBack;

  MyChipWidget(this.tipText, this.color, this.avatar, this.callBack);

  @override
  Widget build(BuildContext context) {
    return new Chip(
      label: new Text(tipText),
      onDeleted: () {
        callBack(this);
      },
      avatar: avatar,
      labelStyle: TextStyle(color: color),
      deleteButtonTooltipMessage: "删除该条",
    );
  }
}
