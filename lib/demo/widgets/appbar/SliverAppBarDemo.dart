import 'package:flutter/material.dart';

void main() {
  runApp(new MaterialApp(home: new MySliverAppBar()));
}

class MySliverAppBar extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => MyState();
}

class MyState extends State with TickerProviderStateMixin {
  final List<ListItem> listData = [];

  @override
  Widget build(BuildContext context) {
    for (int i = 0; i < 20; i++) {
      listData.add(new ListItem("Item$i", Icons.location_city));
    }
    return new Scaffold(
//      appBar: new AppBar(title: new Text("ddd"),),
      body: new NestedScrollView(
          headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
            return <Widget>[
              new SliverAppBar(
                expandedHeight: 240.0,
                //展开高度
                floating: false,
                //是否随着滑动隐藏标题
                pinned: true,
                //是否固定在顶部
                flexibleSpace: FlexibleSpaceBar(
                  centerTitle: true,
                  title: new Text("可折叠TitleBar"),
                  background: Image.network(
                    "https://avatar.csdn.net/6/0/6/3_xieluoxixi.jpg",
                    fit: BoxFit.cover,
                  ),
                ),

//在Bottom下添加Tabbar会和title重叠，可采用SliverPersistentHeader方式添加Tab标签
//                bottom: new TabBar(
//                    controller: new TabController(length: 3, vsync: this),
//                    tabs: [
//                      new Tab(
//                          icon: new Icon(Icons.location_city), text: "City"),
//                      new Tab(icon: new Icon(Icons.map), text: "Map"),
//                      new Tab(icon: new Icon(Icons.print), text: "Print")
//                    ]),
              ),
              new SliverPersistentHeader(
                  pinned: false, //是否固定在顶部
                  delegate: _SliverAppBarDelegate(new TabBar(
                      controller: new TabController(length: 3, vsync: this),
                      labelColor: Colors.black38,
                      tabs: [
                        new Tab(
                            icon: new Icon(Icons.location_city), text: "City"),
                        new Tab(icon: new Icon(Icons.map), text: "Map"),
                        new Tab(icon: new Icon(Icons.print), text: "Print")
                      ])))
            ];
          },
          body: new Center(
            child: new ListView.builder(
              itemBuilder: (BuildContext context, int index) {
                return new ListItemWidget(listData[index]);
              },
              itemCount: listData.length,
            ),
          )),
    );
  }
}

class ListItem {
  String title;
  IconData iconData;

  ListItem(this.title, this.iconData);
}

class ListItemWidget extends StatelessWidget {
  ListItem listItem;

  ListItemWidget(this.listItem);

  @override
  Widget build(BuildContext context) {
    return new InkWell(
      onTap: () {},
      child: new ListTile(
        title: new Text(listItem.title),
        leading: new Icon(listItem.iconData),
      ),
    );
  }
}

/**
 * 给一个可滑动的视图添加一个头（实际上，在CustomScrollView的slivers列表中
 * header可以出现在视图的任意位置，不一定要是在顶部）。这个Header会随着滑动而展开/收起，
 * 使用pinned和floating属性来控制收起时Header是否展示（pinned和floating属性不可以同时为true）
 * ,pinned和floating属性的具体意义和SliverAppBar中相同，
 */
class _SliverAppBarDelegate extends SliverPersistentHeaderDelegate {
  TabBar _tabBar;

  _SliverAppBarDelegate(this._tabBar);

  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return new Container(
      child: _tabBar,
    );
  }

  @override
  double get maxExtent => _tabBar.preferredSize.height;

  @override
  double get minExtent => _tabBar.preferredSize.height;

  @override
  bool shouldRebuild(SliverPersistentHeaderDelegate oldDelegate) {
    return false;
  }
}

//http://flutter.link/2018/07/16/SliverAppBar/
