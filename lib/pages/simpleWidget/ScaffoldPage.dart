import 'package:flutter/material.dart';

class ScaffoldPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => new PageState();
}

class PageState extends State<ScaffoldPage>
    with SingleTickerProviderStateMixin {
  int _currentBottomIndex = 0; //底部tab索引
  //顶部Tab
  TabController _tabController;
  List<String> topTabLists = ["Tab 1", "Tab 2", "Tab 3"];

  @override
  void initState() {
    super.initState();
    //初始化顶部TabController
    _tabController = TabController(length: topTabLists.length, vsync: this);
//    _tabController.addListener(() {
//      switch (_tabController.index) {
//        case 0:
//          print("----11");
//          break;
//        case 1:
//          print("-----2211");
//          break;
//        case 2:
//          print("----333");
//          break;
//      }
//    }
//    );
  }

  void _onBottomTabChange(int index) {
    setState(() {
      _currentBottomIndex = index;
    });
  }

  void _onFabClick() {
    print("------------ FloatingActionButton Click ------------");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //https://blog.csdn.net/hnnd123/article/details/82735502
      appBar: AppBar(
          title: Text("Scaffold 脚手架"),
          centerTitle: true,
          actions: <Widget>[
            IconButton(icon: Icon(Icons.add), onPressed: () {}),
          ],
          bottom: TabBar(
            controller: _tabController,
            tabs: topTabLists
                .map((element) => Tab(
                      text: element,
                      icon: Icon(Icons.print),
                    ))
                .toList(),
//            onTap: (index) => {},
          )),
      drawer: MyDrawer(),
      body: TabBarView(
          controller: _tabController,
          children: topTabLists.map((item) {
            return Container(
              alignment: Alignment.center,
              child: Text(item),
            );
          }).toList()),
      bottomNavigationBar: BottomNavigationBar(
        //不设置该属性多于三个不显示颜色
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), title: Text("首页")),
          BottomNavigationBarItem(icon: Icon(Icons.message), title: Text("消息")),
          BottomNavigationBarItem(
              icon: Icon(Icons.add_a_photo), title: Text("动态")),
          BottomNavigationBarItem(icon: Icon(Icons.person), title: Text("我的"))
        ],
        currentIndex: _currentBottomIndex,
        fixedColor: Colors.blue,
        onTap: (index) => _onBottomTabChange(index),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => _onFabClick,
        child: Icon(Icons.add),
      ),
      floatingActionButtonLocation:
          FloatingActionButtonLocation.endFloat, //设置FloatingActionButton的位置
    );
  }
}

class MyDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(top: 88.0, bottom: 30.0),
          child: Row(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: ClipOval(
                  child: Image.network(
                    "https://avatar.csdn.net/6/0/6/3_xieluoxixi.jpg",
                    width: 60,
                  ),
                ),
              ),
              Text(
                "谢栋",
                style: TextStyle(fontWeight: FontWeight.bold),
              )
            ],
          ),
        ),
        Expanded(
          child: ListView(
            children: <Widget>[
              ListTile(
                leading: const Icon(Icons.settings),
                title: const Text('个人设置'),
              ),
              ListTile(
                leading: const Icon(Icons.live_help),
                title: const Text('帮助说明'),
              ),
              ListTile(
                leading: const Icon(Icons.settings),
                title: const Text('个人设置'),
              ),
              ListTile(
                leading: const Icon(Icons.live_help),
                title: const Text('帮助说明'),
              ),
            ],
          ),
        )
      ],
    ));
  }
}
