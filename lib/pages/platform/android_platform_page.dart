import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

/**
 * 直接调用app里原生平台里的相关方法（区别于插件开发：插件开发也是利用methodChanneljiaohu
 * 调用原生平台的方式，只不过，利用插件开发，把相关方法定义封装在单独的flutter_lib里，
 * 主项目不必关注具体实现细节，只负责调用就行具体实现有插件完成，而直接调用平台里的原生
 * 平台方法一般需要开发者自己去实现相关方法定义，读者可对比插件交互部分代码自行对比
 * ）
 */

class AndroidPlatformPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => PageState();
}

class PageState extends State<AndroidPlatformPage> {
  static final String METHOD_CHANNEL = "com.zhuandian.flutter/android";
  static final String EVENT_CHANNEL = "com.zhuandian.flutter/android/event";
  static final String NATIVE_SHOW_TOAST =
      "showToast"; //原生android平台定义的供flutter端唤起的方法名
  static final String NATIVE_METHOD_ADD =
      "numberAdd"; //原生android平台定义的供flutter端唤起的方法名

  static final String NATIVE_SEND_MESSAGE_TO_FLUTTER =
      "nativeSendMessage2Flutter"; //原生主动向flutter发送消息

  static final MethodChannel _MethodChannel =
      MethodChannel(METHOD_CHANNEL); //平台交互通道
  static final EventChannel _EventChannel =
      EventChannel(EVENT_CHANNEL); //原生平台主动调用flutter端事件通道

  String _fromNativeInfo = "";

  @override
  void initState() {
    super.initState();
    _EventChannel.receiveBroadcastStream().listen(_onEvent, onError: _onErroe);
  }

  void _onEvent(Object object) {
    print(object.toString() + "-------------从原生主动传递过来的值");
    setState(() {
      _fromNativeInfo = object.toString();
    });
  }

  void _onErroe(Object object) {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("平台交互"),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Text("从原生平台主动传递回来的值"),
          Text(_fromNativeInfo),
          RaisedButton(
            color: Colors.orangeAccent,
            child: Text("点击调用原生主动向flutter发消息方法"),
            onPressed: () {
              _MethodChannel.invokeMethod(NATIVE_SEND_MESSAGE_TO_FLUTTER);
            },
          ),

          SizedBox(height: 30),
          RaisedButton(
            color: Colors.orangeAccent,
            child: Text("调用原生平台Toast"),
            onPressed: () {
              showNativeToast("flutter调用原生android的Toast");
            },
          ),
          RaisedButton(
            color: Colors.orangeAccent,
            child: Text("计算两个数的和"),
            onPressed: () {
              getNumberResult(25, 36);
            },
          ),
          RaisedButton(
            color: Colors.orangeAccent,
            child: Text("打开原生androd页面"),
            onPressed: () {
              _MethodChannel.invokeMethod("new_page");
            },
          )
        ],
      ),
    );
  }

  void showNativeToast(String content) {
    _MethodChannel.invokeMethod(NATIVE_SHOW_TOAST, {"msg": content});
  }

  /**
   * 调用平台方法计算两个数的和，并调用原生toast打印出结果
   */
  void getNumberResult(int i, int j) async {
    Map<String, dynamic> map = {"number1": 12, "number2": 43};
    int result = await _MethodChannel.invokeMethod(NATIVE_METHOD_ADD, map);

    _MethodChannel.invokeMethod(NATIVE_SHOW_TOAST, {"msg": "12+43= $result"});
  }
}
