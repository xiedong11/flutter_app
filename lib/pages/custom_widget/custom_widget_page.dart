import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/pages/custom_widget/pages/phone_country_code_page.dart';
import 'package:flutter_app/pages/custom_widget/pages/verification_code_page.dart';
import 'package:flutter_app/view/MyRaisedButton.dart';

/**
 * @desc
 * @author xiedong
 * @date   2020-02-28.
 */

class CustomWidgetPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(title: Text("组件封装"),
    centerTitle: true,),body: Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        MyRaisedButton(new VerficationCodePage(), "验证码倒计时Widget"),
        MyRaisedButton(new PhoneCountryCodePage(), "城市地区选择页")
      ],
    ),);
  }

}