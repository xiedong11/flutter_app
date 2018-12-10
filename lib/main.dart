import 'package:flutter/material.dart';

void main() {
  runApp(new MaterialApp(home: new ChipDemo()));
}

class ChipDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("ChipDemo"),
      ),
      body: new Center(
        child: Chip(
          label: new Text("dd"), //内容标签
          avatar: new Icon(Icons.access_alarm), //label左侧的图片
          deleteIcon: new Icon(Icons.delete),
          onDeleted: () {
            print("点击删除");
          },
          deleteButtonTooltipMessage: "长按删除该条",
          backgroundColor: Colors.deepPurple, //背景颜色
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(3.0)), //设置背景shape样式
        ),
      ),
    );
  }
}


//Chip({
//Key key,
//this.avatar,//标签左侧Widget，一般为小图标
//@required this.label,//标签
//this.labelStyle,
//this.labelPadding,//padding
//this.deleteIcon//删除图标,
//this.onDeleted//删除回调，为空时不显示删除图标,
//this.deleteIconColor//删除图标的颜色,
//this.deleteButtonTooltipMessage//删除按钮的tip文字,
//this.shape//形状,
//this.clipBehavior = Clip.none,
//this.backgroundColor//背景颜色,
//this.padding,
//this.materialTapTargetSize//删除图标material点击区域大小,
//})