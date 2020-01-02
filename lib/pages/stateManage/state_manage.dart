import 'package:flutter/material.dart';
import 'package:flutter_app/pages/stateManage/callback/call_back_page.dart';
import 'package:flutter_app/pages/stateManage/redux/redux_first_page.dart';
import 'package:flutter_app/view/MyRaisedButton.dart';
import 'BLoC/bloc_state_page.dart';

class StateManage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("状态管理"),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          MyRaisedButton(new CallBackPage(), "方法回调"),
          MyRaisedButton(new ReduxFirstPage(), "FlutterRedux"),
          MyRaisedButton(new BLoCStatePage(), "BLoC状态管理"),
        ],
      ),
    );
  }
}
