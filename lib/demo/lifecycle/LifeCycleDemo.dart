import 'package:flutter/material.dart';

class LifeCycleDemo extends StatefulWidget {
  //createState 是 StatefulWidget 里创建 State 的方法，
  // 当要创建新的 StatefulWidget 的时候，会立即执行 createState，
  // 而且只执行一次，createState 必须要实现
  @override
  State<StatefulWidget> createState() => _LifeCycleState();
}

class _LifeCycleState extends State<LifeCycleDemo> {

  var _count = 0;

  //前面的 createState 是在创建 StatefulWidget 的时候会调用，
  // initState 是 StatefulWidget 创建完后调用的第一个方法，
  // 而且只执行一次，类似于 Android 的 onCreate、IOS 的 viewDidLoad()，
  // 所以在这里 View 并没有渲染，但是这时 StatefulWidget
  // 已经被加载到渲染树里了，这时 StatefulWidget 的 mount 的值会变为 true，
  // 直到 dispose 调用的时候才会变为 false。可以在 initState 里做一些初始化的操作
  @override
  void initState() {
    super.initState();
    print('----------initState------------');
  }


  //当 StatefulWidget 第一次创建的时候，didChangeDependencies 方法会在 initState
  // 方法之后立即调用，之后当 StatefulWidget 刷新的时候，就不会调用了
  // ，除非你的 StatefulWidget 依赖的 InheritedWidget 发生变化之后，
  // didChangeDependencies 才会调用，所以 didChangeDependencies 有可能会被调用多次
  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    print('----------didChangeDependencies------------');
  }


  //在 StatefulWidget 第一次创建的时候，build 方法会在 didChangeDependencies
  // 方法之后立即调用，另外一种会调用 build 方法的场景是，
  // 每当 UI 需要重新渲染的时候，build 都会被调用，所以 build 会被多次调用，
  // 然后 返回要渲染的 Widget。千万不要在 build 里做除了创建 Widget 之外的操作，因为这个会影响 UI 的渲染效率
  @override
  Widget build(BuildContext context) {
    print('----------build------------');
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            RaisedButton(
              child: Text('关闭页面'),
              onPressed: () => {Navigator.of(context).pop()},
            ),
            Text('当前计数器数量 : '+_count.toString()),
            RaisedButton(
              child: Text('刷新界面'),
              onPressed: () => {
                this.setState(() {
                  _count++;
                  print('----------刷新界面------------');
                })
              },
            )
          ],
        ),
      ),
    );
  }




  //当要将 State 对象从渲染树中移除的时候，就会调用 deactivate 生命周期，
  // 这标志着 StatefulWidget 将要销毁，但是有时候 State 不会被销毁，而是重新插入到渲染树种
  @override
  void deactivate() {
    super.deactivate();
    print('----------deactivate------------');
  }


  //当 View 不需要再显示，从渲染树中移除的时候，State 就会永久的从渲染树中移除，
  // 就会调用 dispose 生命周期，这时候就可以在  dispose 里做一些取消监听、动画的操作，和 initState 是相反的
  @override
  void dispose() {
    super.dispose();
    print('----------dispose------------');
  }

  //didUpdateWidget 这个生命周期我们一般不会用到，只有在使用 key 对 Widget 进行复用的时候才会调用。
  @override
  void didUpdateWidget(LifeCycleDemo oldWidget) {
    super.didUpdateWidget(oldWidget);
    print('----------didUpdateWidget------------');
  }
}
