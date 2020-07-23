import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/pages/custom_widget/widget/timer_count_down_widget.dart';

/**
 * @desc
 * @author xiedong
 * @date   2020-02-28.
 */

class VerficationCodePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => VerficationCodePageState();
}

class VerficationCodePageState extends State<VerficationCodePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("验证码倒计时"),
        centerTitle: true,
      ),
      body: Center(
        child: TimerCountDownWidget(onTimerFinish: (){
          print("倒计时结束--------");
        },),
      ),
    );
  }
}
