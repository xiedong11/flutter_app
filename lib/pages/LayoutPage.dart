import 'package:flutter/material.dart';
import 'package:flutter_app/pages/layout/ColunmLayoutPage.dart';
import 'package:flutter_app/pages/layout/AlignLayoutPage.dart';
import 'package:flutter_app/pages/layout/CenterPage.dart';
import 'package:flutter_app/pages/layout/ListViewPage.dart';
import 'package:flutter_app/pages/layout/StackLayoutPage.dart';
import 'package:flutter_app/pages/layout/OpacityPage.dart';
import 'package:flutter_app/pages/layout/SizedBoxPage.dart';
import 'package:flutter_app/pages/layout/PaddingLayoutPage.dart';
import 'package:flutter_app/pages/layout/AspecRadioLayoutPage.dart';
class LayoutPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Flutter"),
      ),
      body: new Center(
          child: new Column(
        children: <Widget>[
          Text(
            "各种Layout布局",
            style:
                new TextStyle(fontSize: 30.0, color: Colors.deepOrangeAccent),
          ),
          new SizedBox(
            height: 1.0,
            child: new Container(
              color: Colors.blue,
            ),
          ),
          new FlatButton(
              onPressed: () {
                Navigator.push(
                    context,
                    new MaterialPageRoute(
                        builder: (context) => new AlignLayoutPage()));
              },
              child: new Text("Align布局")),
          new FlatButton(
              onPressed: () {
                Navigator.push(
                    context,
                    new MaterialPageRoute(
                        builder: (context) => new CenterLayoutPage()));
              },
              child: new Text("Center布局")),
          new FlatButton(
              onPressed: () {
                Navigator.push(
                    context,
                    new MaterialPageRoute(
                        builder: (context) => new ColunmLayoutPage()));
              },
              child: new Text("ColunmLayout布局")),
          new FlatButton(
              onPressed: () {
                Navigator.push(
                    context,
                    new MaterialPageRoute(
                        builder: (context) => new ListViewLayoutPage()));
              },
              child: new Text("ListView布局")),
          new FlatButton(
              onPressed: () {
                Navigator.push(
                    context,
                    new MaterialPageRoute(
                        builder: (context) => new OpacityLayoutDemo()));
              },
              child: new Text("Opacity布局")),
          new FlatButton(
              onPressed: () {
                Navigator.push(
                    context,
                    new MaterialPageRoute(
                        builder: (context) => new SizedBoxPage()));
              },
              child: new Text("SizedBox布局")),
          new FlatButton(
              onPressed: () {
                Navigator.push(
                    context,
                    new MaterialPageRoute(
                        builder: (context) => new StackLayoutPage()));
              },
              child: new Text("StackLayout布局")),
          new FlatButton(
              onPressed: () {
                Navigator.push(
                    context,
                    new MaterialPageRoute(
                        builder: (context) => new PaddingLayoutPage()));
              },
              child: new Text("PaddingLayout布局")),
          new FlatButton(
              onPressed: () {
                Navigator.push(
                    context,
                    new MaterialPageRoute(
                        builder: (context) => new AspectRadioLayoutPage()));
              },
              child: new Text("AspecRadioLayoutPage布局"))
        ],
      )),
    );
  }
}
