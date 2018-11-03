
import 'package:flutter/material.dart';

void main() {
  runApp(new MaterialApp(title: 'd', home: new MyApp()));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: new AppBar(
          title: new Text("title"),
        ),
        body:new Stack(
          children: <Widget>[
            new Icon(Icons.title,size: 100.0,),
            new Icon(Icons.title)
          ],
          alignment: Alignment.bottomRight,
        )
    );
  }
}


//按照翻译来讲的话是栈布局的意思，其实也很贴切，最先放入的必然在最下面显示。
//也就是说，栈布局，默认后面放入的Widget会覆盖在前面放入的Widget上面显示。
//当然这个跟android上面的帧布局是比较相似，在布局中还是有很多实用场景的。

//Stack({
//Key key,
//this.alignment: AlignmentDirectional.topStart,//对齐方式
//this.textDirection,
//this.fit: StackFit.loose,//是否按照父类宽高处理自己大小
//this.overflow: Overflow.clip,//溢出处理方式
//List<Widget> children: const <Widget>[],
//})