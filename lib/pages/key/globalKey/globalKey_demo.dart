import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/pages/key/globalKey/switcher_widget.dart';

/**
 * desc:
 * author: xiedong
 * date: 2021/11/26
 **/
class GlobalKeyPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _pageState();
  }
}
// https://www.jianshu.com/p/d37f97a926a8
class _pageState extends State<GlobalKeyPage> {
  final GlobalKey<SwitcherWidgetPageState> key = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SwitcherWidget(
        key: key,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          key.currentState?.changeState();
        },
        child: Text('切换'),
      ),
    );
  }
}
