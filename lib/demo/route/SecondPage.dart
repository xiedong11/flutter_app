import 'package:flutter/material.dart';

class SecondPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Page2"),
      ),
      body: new Center(
        child: new Column(
          children: <Widget>[
            new Text(
              "Page2",
              style: new TextStyle(fontSize: 25.0),
            ),
            new ElevatedButton(
              child: new Text("点我返回"),
              onPressed: () {
                Navigator.of(context).pop();

//                页面出栈-----》不带返回值
//                在Flutter中我们可以使用Navigator.of(context).pop()进行出栈操作，
//                但是值得注意的时如果页面上有Dialog、BottomSheet、popMenu类似的Widget使用pop（）方法会优先进行这些Widget的关闭操作。
//
//                还是上面的代码，我们把第二个页面的Text改成一个按钮，每当点击这个按钮就关闭掉这个页面
              },
              // color: Colors.blue,
              // highlightColor: Colors.lightBlue,
            ),
          ],
        ),
      ),
    );
  }
}
