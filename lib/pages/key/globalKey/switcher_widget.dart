import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

/**
 * desc:
 * author: xiedong
 * date: 2021/11/26
 **/
class SwitcherWidget extends StatefulWidget {
  SwitcherWidget({Key? key}):super(key:key);
  @override
  State<StatefulWidget> createState() => SwitcherWidgetPageState();
}

class SwitcherWidgetPageState extends State<SwitcherWidget> {
  bool isActive = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Switch.adaptive(
            value: isActive,
            activeColor: Colors.blueAccent,
            onChanged: (bool currentStatus) {
              isActive = currentStatus;
              setState(() {});
            }),
      ),
    );
  }

  changeState() {
    isActive = !isActive;
    setState(() {});
  }
}
