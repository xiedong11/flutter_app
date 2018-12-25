import 'package:flutter/material.dart';

void main() {
  runApp(new MaterialApp(home: new MyApp()));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Gestures"),
      ),
      body: new Center(
          child: new GestureDetector(
            child: new Icon(
              Icons.android,
              size: 200.0,
            ),
            onTap: () {
              print("onTap");
            },
            onDoubleTap: () {
              print("onDoubleTap");
            },
            onLongPress: () {
              print("onLongPress");
            },
            onVerticalDragStart: (details){
              print("在垂直方向开始位置:"+details.globalPosition.toString());
            }, onVerticalDragEnd: (details){
            print("在垂直方向结束位置:"+details.primaryVelocity.toString());
          },
          )),
    );
  }
}

//
//指针Pointers
//指针代表关于用户与设备屏幕交互的原始数据。有四种类型的指针事件：
//
//PointerDownEvent 指针已经联系了特定位置的屏幕。
//PointerMoveEvent 指针已经从屏幕上的一个位置移动到另一个位置。
//PointerUpEvent 指针停止接触屏幕。
//PointerCancelEvent 来自此指针的输入不再针对此应用。
//在指针向下时，框架对您的应用程序执行命中测试，以确定指针与屏幕相接的位置存在哪些小部件。指针向下事件（以及该指针的后续事件）然后被分派到由命中测试发现的最内部的小部件。
//
//从那里开始，这些事件会冒泡到树中（事件分发），并被分派到从最内部的小部件到树根的路径上的所有小部件。没有任何机制可以取消或停止进一步调度指针事件。
//
//由于指针不能直接用于控件的监听，所以我们在开发中一般使用Gesture来监听用户的各种事件。
//
//手势Gestures
//手势表示可以从多个单独的指针事件识别的语义动作（例如，轻敲，拖动和缩放），甚至可能是多个单独的指针。手势可以分派多个事件，对应于手势的生命周期（例如，拖动开始，拖动更新和拖动结束）：
//
//单击
//
//onTapDown 可能导致水龙头的指针已经在特定位置与屏幕接触。
//onTapUp 将触发水龙头的指针已停止在特定位置与屏幕接触。
//onTap 出现了水龙头。
//onTapCancel先前触发的指针onTapDown不会导致敲击。
//双击
//
//onDoubleTap 用户快速连续两次在同一位置轻敲屏幕。
//长按
//
//onLongPress 指针在相同位置长时间保持与屏幕接触。
//垂直拖动
//
//onVerticalDragStart 指针已经与屏幕联系并可能开始垂直移动。
//onVerticalDragUpdate 与屏幕接触并垂直移动的指针已沿垂直方向移动。
//onVerticalDragEnd 先前与屏幕接触并垂直移动的指针不再与屏幕接触，并且在停止接触屏幕时以特定速度移动。
//水平拖拽
//
//onHorizontalDragStart 指针已经与屏幕联系并可能开始水平移动。
//onHorizontalDragUpdate 与屏幕接触并水平移动的指针已沿水平方向移动。
//onHorizontalDragEnd 先前与屏幕接触并水平移动的指针不再与屏幕接触，并且在停止接触屏幕时以特定速度移动。
//要让Gesture可以监听Widget的各种事件需要使用GestureDetector来处理这些事件。
//
//我们来看下GestureDetector的构造方法：
//GestureDetector({
//Key key,
//this.child,
//this.onTapDown,
//this.onTapUp,
//this.onTap,
//this.onTapCancel,
//this.onDoubleTap,
//this.onLongPress,
//this.onVerticalDragDown,
//this.onVerticalDragStart,
//this.onVerticalDragUpdate,
//this.onVerticalDragEnd,
//this.onVerticalDragCancel,
//this.onHorizontalDragDown,
//this.onHorizontalDragStart,
//this.onHorizontalDragUpdate,
//this.onHorizontalDragEnd,
//this.onHorizontalDragCancel,
//this.onPanDown,
//this.onPanStart,
//this.onPanUpdate,
//this.onPanEnd,
//this.onPanCancel,
//this.onScaleStart,
//this.onScaleUpdate,
//this.onScaleEnd,
//this.behavior,
//this.excludeFromSemantics: false
//})

//
//事件冲突处理
//正常情况下，我们仅仅会在一个方向上操作界面，但是是也不排除用户在横向和竖向操作界面（或者是多个手势）
//，这样一来屏幕就会给底层发来多个手势识别器，这样一样就会存在手势的冲突。
//
//如果两个手势都在操作，最后剩下的识别器会享有事件的处理权
//如果横竖两个识别器同时存在，最先划出屏幕的识别器享有事件处理权
//上述两个是Flutter中事件冲突时获取滑动事件的规则。