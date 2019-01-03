import 'package:flutter/material.dart';

class IndexAndChosePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => new MyState();
}

class MyState extends State {
  bool _isCheckBoxChecked = true;
  bool _isSwitchChecked = true;
  int _radioValue = 0;

  void handleRadioValueChanged(int value) {
    setState(() {
      _radioValue = value;
      print(_radioValue.toString() + '-------------------');
    });
  }

  void _checkState(bool isChecked) {
    setState(() {
      _isCheckBoxChecked = isChecked;
    });
  }

  void _switchState(bool isChecked) {
    setState(() {
      _isSwitchChecked = isChecked;
    });
  }

  double _currentIndex = 0.0;

  void _onSliderStateChanged(double value) {
    setState(() {
      _currentIndex = value;
      print(_currentIndex.toString() + '-------------------');
    });
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("IndexAndChose Widget"),
      ),
      body: new Column(
        children: <Widget>[
          Text("圆形进度条"),
          new CircularProgressIndicator(
            backgroundColor: Colors.white,
            valueColor: AlwaysStoppedAnimation(Colors.deepOrange),
//            value: 0.5, //(在不指定value的情况下，进度条一直滚动)
            strokeWidth: 5.0,
          ),
          Text("水平进度条"),
          new LinearProgressIndicator(
            backgroundColor: Colors.white,
//                value: 0.5, //(在不指定value的情况下，进度条一直滚动))
          ),
          SizedBox(
            height: 20,
          ),
          Text("Slider"),
          new Slider(
              value: _currentIndex,
              min: 0.0,
              max: 7.0,
              label: "星期$_currentIndex",
              activeColor: Colors.green,
              onChanged: _onSliderStateChanged),
          SizedBox(height: 15.0),
          Text(
            "CheckBox",
            textAlign: TextAlign.center,
          ),
          Checkbox(
              value: _isCheckBoxChecked,
              onChanged: (isChecked) {
                _checkState(isChecked);
              }),
          Text(
            "Switch",
            textAlign: TextAlign.center,
          ),
          Switch(
              value: _isSwitchChecked,
              onChanged: (isChecked) {
                _switchState(isChecked);
              }),
          Text(
            "Radio",
            textAlign: TextAlign.center,
          ),
          new Column(
            children: <Widget>[
              new Radio(
                  value: 0,
                  groupValue: _radioValue,
                  onChanged: handleRadioValueChanged),
              new Radio(
                  value: 1,
                  groupValue: _radioValue,
                  activeColor: Colors.red,
                  onChanged: handleRadioValueChanged),
              new Radio(
                  value: 2,
                  groupValue: _radioValue,
                  onChanged: handleRadioValueChanged),
            ],
          ),
        ],
      ),
    );
  }
}
