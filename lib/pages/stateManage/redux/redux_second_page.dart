import 'package:flutter/material.dart';
import 'package:flutter_app/pages/stateManage/redux/action.dart' as prefix0;
import 'package:flutter_app/pages/stateManage/redux/redux_state.dart';

import 'package:flutter_redux/flutter_redux.dart';

import 'package:redux/redux.dart';

class ReduxSecondPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => PageState();
}

class PageState extends State<ReduxSecondPage> {
  @override
  Widget build(BuildContext context) {
    return StoreBuilder<ReduxState>(
      builder: (BuildContext context, Store<ReduxState> store) {
        return Scaffold(
          appBar: AppBar(
            title: Text('点赞详情页'),
            centerTitle: true,
          ),
          body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text("当前获得点赞数为：${store.state.count}  \n点击下面按钮可改变全局状态",
                  style: TextStyle(fontSize: 18)),
              SizedBox(height: 50),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Icon(
                    Icons.favorite,
                    color: Colors.redAccent,
                    size: 32,
                  ),
                  SizedBox(width: 5),
                  Text("${store.state.count}",
                      style: TextStyle(fontSize: 15, color: Colors.grey))
                ],
              ),
              SizedBox(height: 30),
              ElevatedButton(
                child: Text("增加点赞"),
                onPressed: () {
                  store.dispatch(prefix0.Action.increase);
                },
              ),
              ElevatedButton(
                child: Text("减少点赞"),
                onPressed: () {
                  store.dispatch(prefix0.Action.decrease);
                },
              )
            ],
          ),
        );
      },
    );
  }
}
