import 'package:flutter/material.dart';
import 'package:flutter_app/pages/stateManage/redux/redux_second_page.dart';
import 'package:flutter_app/pages/stateManage/redux/redux_state.dart';

import 'package:flutter_redux/flutter_redux.dart';

import 'package:redux/redux.dart';

class ReduxFirstPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => PageState();
}

class PageState extends State<ReduxFirstPage> {
  @override
  Widget build(BuildContext context) {
    return StoreBuilder<ReduxState>(
      builder: (BuildContext context, Store<ReduxState> store) {
        return Scaffold(
          appBar: AppBar(
            title: Text('模拟点赞数'),
            centerTitle: true,
          ),
          body: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
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
              SizedBox(height: 50),
              RaisedButton(
                child: Text("点击进入下一页"),
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (buildContext) => ReduxSecondPage()));
                },
              )
            ],
          ),
        );
      },
    );
  }
}
