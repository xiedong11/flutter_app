import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(new MaterialApp(home: new PullToRefreshDemo()));
}

class PullToRefreshDemo extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => new MyState();
}

class MyState extends State {
  List<int> items = List.generate(16, (i) => i); //快速生成List
  ScrollController _scrollController = new ScrollController();
  List<int> list = List.generate(12, (i) => i);

  Future<Null> _onRefreshDate() async {
    await Future.delayed(Duration(seconds: 3), () {
      print("--------------refresh--");
      setState(() {
        items.clear();
        items = List.generate(13, (i) => i);
        return null;
      });
    });
  }

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(() {
      if (_scrollController.position.pixels ==
          _scrollController.position.maxScrollExtent) {
        print("--------------------loadMore");
        setState(() {
          _loadMoreData();
        });
      }
    });
  }

  _loadMoreData() async {
    await Future.delayed(
        Duration(
          seconds: 3,
        ), () {
      items.addAll(list);
    });
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: new AppBar(
          title: new Text("下拉刷新"),
        ),
        body: new RefreshIndicator(
            color: Colors.redAccent,
            backgroundColor: Colors.lightBlueAccent,
            child: new ListView.builder(
              itemCount: items.length + 1,
              itemBuilder: (context, index) {
                if (index == items.length) {
                  //滑动到底部时装载加载更多loading视图
                  return new ItemLoading();
                } else {
                  return new GestureDetector(
                    onTap: () {
                      ScaffoldMessenger.of(context).showSnackBar(
                          new SnackBar(content: new Text("点击了条目$index")));
                    },
                    child: ListTile(
                      title: new Text("条目$index"),
                    ),
                  );
                }
              },
              controller: _scrollController,
            ),
            onRefresh: _onRefreshDate));
  }
}

/**
 * ListView加载更多底部视图
 */
class ItemLoading extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Container(
      child: Padding(
        padding: const EdgeInsets.all(18.0),
        child: new Align(
          alignment: new FractionalOffset(0.0, 0.5),
          child: new Row(
            crossAxisAlignment: CrossAxisAlignment.center, //排列方式
            children: <Widget>[
              new Expanded(
                  child: Center(
                child: new CircularProgressIndicator(),
              )),
              new Expanded(child: new Text("加载中...")),
            ],
          ),
        ),
      ),
      color: Colors.white70,
    );
  }
}
