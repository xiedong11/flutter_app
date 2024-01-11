import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

/**
 * desc:
 * author: xiedong
 * date: 2021/11/30
 **/
class Box extends StatefulWidget {
  Color color;

  Box(this.color, {Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _BoxState();
}

class _BoxState extends State<Box> {
  int count = 0;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: 100,
      color: widget.color,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('$count', style: TextStyle(color: Colors.white)),
            IconButton(
              onPressed: () {
                setState(() {
                  count++;
                });
              },
              icon: Icon(Icons.add),
            )
          ],
        ));
  }
}
