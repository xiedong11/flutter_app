import 'package:flutter/material.dart';

class StaticNavigatorPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("静态路由页"),
      ),
      floatingActionButton: new FloatingActionButton(
        tooltip: "长按时显示的提示语",
        shape: CircleBorder(),
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
        // mini： 默认 false，默认按钮为 56 * 56，当mini 为 true 时，默认大小为 40 * 40，边框padding 各为 4，所以布局大小为 48 * 48
        mini: false,
        onPressed: () {
          Navigator.of(context).pop();
        },
        child: new Text("返回"),
      ),
      body: new Center(
        child: Text("静态路由可以传入一个routes参数来定义路由。但是这里定义的路由是静态的，"
            "它不可以向下一个页面传递参数，利用push到一个新页面,pushNamed方法是有一个Future的返回值的"
            "，所以静态路由也是可以接收下一个页面的返回值的。但是不能向下一个页面传递参数"),
      ),
    );
  }
}

//floatingActionButton 属性说明

// tooltip：长按时显示的提示语
// foregroundColor：Icon 与 Text 颜色
// backgroundColor：背景色
// focusColor：聚焦色
// hoverColor：悬浮色
// splashColor：点击时的颜色
// heroTag：标记
// elevation：阴影高度
// focusElevation：聚焦时阴影高度
// hoverElevation：悬浮时阴影高度
// highlightElevation：高亮时阴影高度
// disabledElevation：不可用时阴影高度
// onPressed：点击事件
// mouseCursor：鼠标悬停
// mini： 默认 false，默认按钮为 56 * 56，当mini 为 true 时，默认大小为 40 * 40，边框padding 各为 4，所以布局大小为 48 * 48
// shape：自定义形状 BeveledRectangleBorder矩形，Border边框颜色和厚度，CircleBorder圆形，ContinuousRectangleBorder连续圆角，StadiumBorder 体育场边界 ，药丸形状，OutlineInputBorder外边框可以定制圆角
// clipBehavior：边缘裁剪方式，默认为 Clip.none
// focusNode：焦点节点，例如监听 focusNode 可以实现输入框的开始、结束输入
// autofocus：自动聚焦，默认为 false
// materialTapTargetSize：点击区域大小，MaterialTapTargetSize.padded时最小点击区域为48*48，MaterialTapTargetSize.shrinkWrap 时为子组件的实际大小。
// isExtended：默认为 false，当使用 extended 方法时为 true
// extended.icon：设置 Icon（该属性为扩展属性）
// extended.label：设置 label（@requirded，该属性为扩展属性）
// child：子控件，通常为 Icon
