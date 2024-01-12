import 'package:flutter/material.dart';

/**
 * 定义自带路由跳转button
 */
class MyRaisedButton extends StatelessWidget {
  var _shapeBorder = new RoundedRectangleBorder(
      borderRadius: BorderRadius.all(Radius.circular(20.0)));
  var _textStyle = new TextStyle(color: Colors.white, fontSize: 16.0);
  var _btnTitle;
  var _pageNavigator;

  MyRaisedButton(this._pageNavigator, this._btnTitle);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        //第一种写法
        Navigator.push(context,
            new MaterialPageRoute(builder: (context) => _pageNavigator));
        //第二张路由写法
//        Navigator.of(context)
//            .push(new MaterialPageRoute(builder: (context) => _pageNavigator));
      },
      child: Text(
        _btnTitle,
        style: _textStyle,
      ),
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all(Colors.lightGreen),
      ),
      //高版本sdk，无此属性
      // color: Colors.lightGreen,
      // highlightColor: Colors.green,
      // shape: _shapeBorder,
    );
  }
}
