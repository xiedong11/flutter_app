import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/pages/custom_widget/entity/phone_country_code_entity.dart';
import 'package:flutter_app/pages/network/utils/dio_utils.dart';
import 'package:flutter_app/view/margin_widget.dart';

/**
 * @desc   选择城市地区联动索引页
 * @author xiedong
 * @date   2020-04-30.
 */

class PhoneCountryCodePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => PageState();
}

class PageState extends State<PhoneCountryCodePage> {
  var GET_PHONE_COUNTRY_CODE_URL =
      "https://raw.githubusercontent.com/xiedong11/flutter_app/master/static/phoneCode.json";
  List<String> letters = [];
  List<PhoneCountryCodeData> data;

  ScrollController _scrollController = ScrollController();
  int _currentIndex = 0;

  @override
  void initState() {
    super.initState();
    getPhoneCodeDataList();
  }

  getPhoneCodeDataList() async {
    var response = await DioUtils.getInstance().get(GET_PHONE_COUNTRY_CODE_URL);

    var resultEntity = new PhoneCountryCodeEntity.fromJson(json.decode(response));

    if(resultEntity.code==200){
      this.setState(() {
        data = resultEntity.data;
        for (int i = 0; i < data.length; i++) {
          letters.add(data[i].name.toUpperCase());
        }
      });
    }

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("城市地区选择"),
        centerTitle: true,
      ),
      body: Stack(
        children: <Widget>[
          data == null || data.length == 0
              ? Text("")
              : Padding(
                  padding: EdgeInsets.only(left: 20),
                  child: ListView.builder(
                      controller: _scrollController,
                      itemCount: data.length,
                      itemBuilder: (BuildContext context, int index) {
                        return Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            PhoneCodeIndexName(data[index].name.toUpperCase()),
                            ListView.builder(
                                itemBuilder:
                                    (BuildContext context, int index2) {
                                  return Container(
                                    height: 46,
                                    child: GestureDetector(
//                      behavior: HitTestBehavior.translucent,
                                      child: Padding(
                                        padding:
                                            EdgeInsets.symmetric(vertical: 10),
                                        child: Row(
                                          children: <Widget>[
                                            Text(
                                                "${data[index].listData[index2].name}",
                                                style: TextStyle(
                                                    fontSize: 16,
                                                    color: Color(0xff434343))),
                                            Margin(width: 10),
                                            Text(
                                              "+${data[index].listData[index2].code}",
                                              style: TextStyle(
                                                  fontSize: 16,
                                                  color: Color(0xffD6D6D6)),
                                            )
                                          ],
                                        ),
                                      ),
                                      onTap: () {
                                        Navigator.of(context).pop(
                                            data[index].listData[index2].code);
                                      },
                                    ),
                                  );
                                },
                                itemCount: data[index].listData.length,
                                shrinkWrap: true,
                                physics:
                                    NeverScrollableScrollPhysics()) //禁用滑动事件),
                          ],
                        );
                      }),
                ),
          Align(
            alignment: new FractionalOffset(1.0, 0.5),
            child: SizedBox(
              width: 25,
              child: Padding(
                padding: EdgeInsets.only(top: 20),
                child: ListView.builder(
                  itemCount: letters.length,
                  itemBuilder: (BuildContext context, int index) {
                    return GestureDetector(
                      child: Text(
                        letters[index],
                        style: TextStyle(color: Colors.black),
                      ),
                      onTap: () {
                        setState(() {
                          _currentIndex = index;
                        });
                        var height = index * 45.0;
                        for (int i = 0; i < index; i++) {
                          height += data[i].listData.length * 46.0;
                        }
                        _scrollController.jumpTo(height);
                      },
                    );
                  },
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}

class PhoneCodeIndexName extends StatelessWidget {
  String indexName;

  PhoneCodeIndexName(this.indexName);

  Widget build(BuildContext context) {
    return Container(
      height: 45,
      child: Padding(
        child: Text(indexName,
            style: TextStyle(fontSize: 20, color: Color(0xff434343))),
        padding: EdgeInsets.symmetric(vertical: 10),
      ),
    );
  }
}
