import 'package:flutter/material.dart';

void main() {
  runApp(new MaterialApp(
    title: "布局",
    home: new LayoutDemo(),
  ));
}

class LayoutDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("水平方向布局"),
      ),

      //布局方向  Row:水平布局 Column：垂直布局
      body: new Row(
        children: <Widget>[
          new RaisedButton(
            onPressed: () {
              print('点击红色按钮');
            },
            color: const Color(0xffff0000),
            child: new Text('红色按钮'),
          ),
          new RaisedButton(
            onPressed: () {
              print("点击蓝色按钮");
            },
            color: const Color(0xff000099),
            child: new Text('蓝色按钮'),
          ),
          new RaisedButton(
            onPressed: () {
              print("点击粉色按钮");
            },
            color: const Color(0xffee9999),
            child: new Text('粉色按钮'),
          )
        ],
      ),
    );
  }
}

//Stack即层叠布局控件，能够将子控件层叠排列。

//Stack控件的每一个子控件都是定位或不定位，定位的子控件是被Positioned控件包裹的
// 。Stack控件本身包含所有不定位的子控件，其根据alignment定位（默认为左上角）。
// 然后根据定位的子控件的top、right、bottom和left属性将它们放置在Stack控件上。
class StackLayoutDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: new AppBar(
          title: new Text('层叠布局'),
        ),
        body: new Center(
          child: new Stack(
            children: <Widget>[
              new Image.network(
                  'http://img2.cxtuku.com/00/13/12/s97783873391.jpg'),
              new Positioned(
                  left: 35.0,
                  right: 35.0,
                  top: 45.0,
                  child: new Text(
                    'Whatever is worth doing is worth doing well. ๑•ิ.•ั๑',
                    style: new TextStyle(
                      fontSize: 20.0,
                      fontFamily: 'serif',
                    ),
                  )),
              new Positioned(
                  left: 55.0,
                  right: 55.0,
                  top: 55.0,
                  child: new Text(
                    '中文字体๑•ิ.•ั๑',
                    style: new TextStyle(
                      fontSize: 20.0,
                      color: Colors.red,
                      fontFamily: 'serif',
                    ),
                  ))
            ],
          ),
        ));
  }
}

//ListView即滚动列表控件，能将子控件组成可滚动的列表。当你需要排列的子控件超出容器大小，就需要用到滚动块。

class ListViewLayoutDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('滚动布局'),
      ),
      body: new ListView(
        children: <Widget>[
          new Center(
            child: new Text(
              '\n大标题',
              style: new TextStyle(fontFamily: 'serif', fontSize: 20.0),
            ),
          ),
          new Center(
            child: new Text(
              '小标题',
              style: new TextStyle(
                fontFamily: 'serif',
                fontSize: 12.0,
              ),
            ),
          ),
          new Center(
            child: new Text(
              '''
            内容sadf手动阀防守打法 发生富士达发生发生飞都是
            内容sadf手动阀防守打法 发生富士达发生发生飞都是
            内容sadf手动阀防守打法 发生富士达发生发生飞都是
            内容sadf手动阀防守打法 发生富士达发生发生飞都是
            内容sadf手动阀防守打法 发生富士达发生发生飞都是
            内容sadf手动阀防守打法 发生富士达发生发生飞都是
             内容sadf手动阀防守打法 发生富士达发生发生飞都是
            内容sadf手动阀防守打法 发生富士达发生发生飞都是
            内容sadf手动阀防守打法 发生富士达发生发生飞都是
            内容sadf手动阀防守打法 发生富士达发生发生飞都是
            内容sadf手动阀防守打法 发生富士达发生发生飞都是
            内容sadf手动阀防守打法 发生富士达发生发生飞都是
             内容sadf手动阀防守打法 发生富士达发生发生飞都是
            内容sadf手动阀防守打法 发生富士达发生发生飞都是
            内容sadf手动阀防守打法 发生富士达发生发生飞都是
            内容sadf手动阀防守打法 发生富士达发生发生飞都是
            内容sadf手动阀防守打法 发生富士达发生发生飞都是
            内容sadf手动阀防守打法 发生富士达发生发生飞都是
             内容sadf手动阀防守打法 发生富士达发生发生飞都是
            内容sadf手动阀防守打法 发生富士达发生发生飞都是
            内容sadf手动阀防守打法 发生富士达发生发生飞都是
            内容sadf手动阀防守打法 发生富士达发生发生飞都是
            内容sadf手动阀防守打法 发生富士达发生发生飞都是
            内容sadf手动阀防守打法 发生富士达发生发生飞都是
             内容sadf手动阀防守打法 发生富士达发生发生飞都是
            内容sadf手动阀防守打法 发生富士达发生发生飞都是
            内容sadf手动阀防守打法 发生富士达发生发生飞都是
            内容sadf手动阀防守打法 发生富士达发生发生飞都是
            内容sadf手动阀防守打法 发生富士达发生发生飞都是
            内容sadf手动阀防守打法 发生富士达发生发生飞都是
           
                             ''',
              style: new TextStyle(fontSize: 14.0),
            ),
          )
        ],
      ),
    );
  }
}

//Center既中心定位控件，能够将子控件放在其内部中心。
class CenterLayoutDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('中心布局'),
      ),
      body: new Center(
        child: new Text('我在屏幕中央'),
      ),
    );
  }
}

//Align控件即对齐控件，能将子控件所指定方式对齐，并根据子控件的大小调整自己的大小。
//
//对齐子控件的方式：
//
//bottomCenter    (0.5, 1.0)    底部中心
//bottomLeft    (0.0, 1.0)    左下角
//bottomRight    (1.0, 1.0)    右下角
//center    (0.5, 0.5)    水平垂直居中
//centerLeft    (0.0, 0.5)    左边缘中心
//centerRight    (1.0, 0.5)    右边缘中心
//topCenter    (0.5, 0.0)    顶部中心
//topLeft    (0.0, 0.0)    左上角
//topRight    (1.0, 0.0)    右上角
class AlignLayoutDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Align布局'),
      ),
      body: new Stack(
        children: <Widget>[
          new Align(
            alignment: new FractionalOffset(0.0, 0.5),
            child: new Text(
              '内容布局',
              style: new TextStyle(fontSize: 35.0),
            ),
          ),
          new Align(
            alignment: new FractionalOffset(1.0, 1.0),
            child: new Text(
              '内容',
              style: new TextStyle(fontSize: 30.0),
            ),
          )
        ],
      ),
    );
  }
}

//Padding控件即填充控件，能给子控件插入给定的填充。
class PaddingLayoutDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Padding布局'),
      ),
      body: new Padding(
//        padding: const EdgeInsets.only(top: 30.0),
        padding: const EdgeInsets.all(80.0),
        child: new Text('Padding布局'),
      ),
    );
  }
}

//SizedBox控件能强制子控件具有特定宽度、高度或两者都有
class SizedBoxLayoutDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('SizedBox布局'),
      ),
      body: new SizedBox(
        width: 200.0,
        height: 200.0,
        child: new Container(
          decoration: new BoxDecoration(color: Colors.red),
        ),
      ),
    );
  }
}

//AspectRatio控件能强制子小部件的宽度和高度具有给定的宽高比，以宽度与高度的比例表示。
class AspectRadioLayoutDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('AspectRadio布局'),
      ),
      body: new AspectRatio(
        aspectRatio: 4.0 / 3.0,
        child: new Container(
          decoration: new BoxDecoration(color: Colors.lightBlue),
        ),
      ),
    );
  }
}




//DecoratedBox控件会在子控件绘制之前或之后绘制一个装饰。
class DecoratedBoxLayoutDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: new AppBar(
          title: new Text('DecoratedBox布局修饰器'),
        ),
        body: new DecoratedBox(
            decoration: new BoxDecoration(
                gradient: new LinearGradient(
                    begin: const FractionalOffset(0.0, 0.0),
                    end: const FractionalOffset(1.0, 1.0),
                    colors: <Color>[Colors.red, Colors.black])),
            child: new Container(
              width: 400.0,
              height: 300.0,
            )));
  }
}


//Opacity控件能调整子控件的不透明度，使子控件部分透明，不透明度的量从0.0到1.1之间，0.0表示完全透明，1.1表示完全不透明。
class OpacityLayoutDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      backgroundColor: Colors.amber,
      appBar: new AppBar(
        title: new Text('Opacity'),
      ),
      body: new Center(
        child: new Opacity(
          opacity: 0.5,
          child: new Container(
            width: 200.0,
            height: 220.0,
            decoration: new BoxDecoration(color: Colors.redAccent),
          ),
        ),
      ),
    );
  }
}