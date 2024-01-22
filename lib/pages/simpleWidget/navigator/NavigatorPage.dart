import 'package:flutter/material.dart';
import 'package:flutter_app/pages/simpleWidget/navigator/StaticNavigatorPage.dart';
import 'package:flutter_app/pages/simpleWidget/navigator/StaticNavigatorPageWithParams.dart';
import 'package:flutter_app/pages/simpleWidget/navigator/DynamicNavigationPage.dart';

class NavigatorPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "路由页面",
      theme: new ThemeData(
          appBarTheme: AppBarTheme(
              foregroundColor: Colors.white,
              color: Colors.blue,
              centerTitle: true),
          primarySwatch: Colors.blue),
      home: MyPage(context),
      routes: <String, WidgetBuilder>{
        // 这里可以定义静态路由路径名，但是跳转的时候路由名一定要对应一直，不能传递参数，可以从下个页带回参数
        "route/page_no_result": (_) => new StaticNavigatorPage(),
        "route/page_with_result": (BuildContext context) =>
            new StaticNavigatorPageWithResult()
      },
    );
  }
}

class MyPage extends StatelessWidget {
  var _rootContext;

  MyPage(this._rootContext);

  /**
   * 路由跳转动画
   */
  SlideTransition createTransition(Animation<double> animation, Widget child) {
    return new SlideTransition(
      position: new Tween<Offset>(
        begin: const Offset(1.0, 0.0),
        end: const Offset(0.0, 0.0),
      ).animate(animation),
      child: child,
    );
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        leading: Center(
          child: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () => {Navigator.of(_rootContext).pop()},
          ),
        ),
        title: new Text(
          "路由页面",
          style: TextStyle(fontSize: 20),
        ),
      ),
      floatingActionButton: new FloatingActionButton(
        shape: CircleBorder(),
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
        onPressed: () {
          Navigator.of(_rootContext).pop(); //使用路由结束当前页，需要使用跟布局的context
        },
        child: new Text("返回\n上页"),
      ),
      body: new Center(
        child: new Column(
          children: <Widget>[
            Text("静态路由", textAlign: TextAlign.center),
            new ElevatedButton(
              onPressed: () {
                Navigator.of(context).pushNamed('route/page_no_result');
              },
              child: new Text("静态路由无参数返回"),
            ),
            new ElevatedButton(
              onPressed: () {
//                Navigator.of(context).pushNamed( 'route/page_with_result') //两种写法都可以
                Navigator.pushNamed(context, 'route/page_with_result')
                    .then((onValue) {
                  showDialog(
                      context: _rootContext, //dialog显示在父级布局上，所有应该使用_rootContext
                      builder: (context) {
                        return new AlertDialog(
                          content: new Text(onValue as String),
                        );
                      });
                });
              },
              child: new Text("静态路由带回页面返回值"),
            ),
            SizedBox(height: 60.0),

            //动态路由
            //借助动态路由可以向下一级页面传递参数，同时也可以跟静态路由一样，得到下一级页面带回的返回值,
            //【静态路由、动态路由都可以得到下一级页面的返回值，但是只有动态路由支持向下一级页面传递参数】
            //在路由回调方法的then中接受返回参数
            Text("动态路由", textAlign: TextAlign.center),
            new ElevatedButton(
              onPressed: () {
                Navigator.push(
                        context,
                        new PageRouteBuilder(pageBuilder: (BuildContext context,
                            Animation<double> animation,
                            Animation<double> secondaryAnimation) {
                          return new DynamicNaviattionPage();
                        }, transitionsBuilder: (BuildContext context,
                            Animation<double> animation,
                            Animation<double> secondaryAnimation,
                            Widget child) {
                          return createTransition(animation, child);
                        })) /*.then((value) {
                  showDialog(
                      context: _rootContext,
                      child: new AlertDialog(
                        content: new Text(value),
                      ));
                })*/
                    ;
              },
              child: new Text("添加路由跳转动画"),
            ),
            new ElevatedButton(
              onPressed: () {
                Navigator.push(
                    context,
                    new MaterialPageRoute(
                        //_代表参数为空
                        builder: (_) => new DynamicNaviattionPage(
                              username: "xiedong",
                              password: "123456",
                            ))).then((value) {
                  showDialog(
                      context: _rootContext,
                      builder: (context) {
                        return new AlertDialog(
                          content: new Text(value),
                        );
                      });
                });
              },
              child: new Text("路由传参"),
            )
          ],
        ),
      ),
    );
  }
}
