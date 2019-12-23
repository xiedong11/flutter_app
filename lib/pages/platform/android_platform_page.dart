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

  static final String CHANNEL = "com.zhuandian.flutter/android";
  static final String SHOW_NATIVE_TOAST = "showToast"; //原生android平台定义的供flutter端唤起的方法名

  static final MethodChannel _MethodChannel = MethodChannel(CHANNEL); //平台交互通道
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("交互平台"),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          RaisedButton(
            child: Text("调用原生平台Toast"),
            onPressed: (){
              showNativeToast("flutter调用原生android的Toast");
            },
          )
        ],
      ),
    );
  }

  void showNativeToast(String content) {
    _MethodChannel.invokeMethod(SHOW_NATIVE_TOAST,{"msg":content});
  }
}
