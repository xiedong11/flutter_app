import 'package:flutter/material.dart';
import 'package:flutter_app/pages/custom_widget/custom_widget_page.dart';
import 'package:flutter_app/pages/key/globalKey/globalKey_demo.dart';
import 'package:flutter_app/pages/key/key_demo.dart';
import 'package:flutter_app/pages/network/net_work_page.dart';
import 'package:flutter_app/pages/platform/platform_page.dart';
import 'package:flutter_app/pages/stateManage/redux/redux_state.dart';
import 'package:flutter_app/pages/stateManage/state_manage.dart';
import 'package:flutter_app/view/MyRaisedButton.dart';
import 'package:flutter_app/pages/simpleWidget/SimpleWidgetMainPage.dart';
import 'package:flutter_app/pages/storage/StoragePage.dart';
import 'package:flutter_app/view/custom_view_page.dart';
import 'package:flutter_redux/flutter_redux.dart';

import 'package:redux/redux.dart';

void main() {
  final store =
      Store<ReduxState>(getReduce, initialState: ReduxState.initState());

  runApp(new FlutterDemo(store));
}

class FlutterDemo extends StatelessWidget {
  final Store<ReduxState> store;

  FlutterDemo(this.store);

  @override
  Widget build(BuildContext context) {
    return StoreProvider(
      //StoreProvider的节点下必须是MaterialApp作为根布局，否则在StoreBuilder中无非完成状态管理
      store: store,
      child: StoreBuilder<ReduxState>(
          builder: (BuildContext context, Store<ReduxState> store) {
        return MaterialApp(
          theme: ThemeData(
            appBarTheme: AppBarTheme(
              foregroundColor: Colors.white,
              color: Colors.blue,
            ),
          ),
          home: Scaffold(
            appBar: new AppBar(
              title: new Text("Flutter进阶之旅"),
            ),
            body: new Center(
              child: new Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  MyRaisedButton(new SimpleWidgetMainPage(), "基础Widget部分"),
                  MyRaisedButton(new StoragePage(), "数据存储"),
                  MyRaisedButton(new CustomViewPage(), "自定义View"),
                  MyRaisedButton(new NetWorkPage(), "网络请求"),
                  MyRaisedButton(new PlatformPage(), "平台调用"),
                  MyRaisedButton(new StateManage(), "状态管理"),
                  MyRaisedButton(new CustomWidgetPage(), "组件封装"),
                  MyRaisedButton(new KeyDemo(), "Key Demo"),
                ],
              ),
            ),
          ),
        );
      }),
    );
  }
}
