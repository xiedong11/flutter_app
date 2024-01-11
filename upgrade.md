### 版本升级md
 

> 升级到flutter3之后，需要修改的组建和属性说明

Text，Button等widget
//高版本sdk无下方属性
// color: Colors.blue,
// highlightColor: Colors.lightBlueAccent,
// disabledColor: Colors.lightBlueAccent,



**Old Widget        change to    New Widget
FlatButton   =>                   TextButton
RaisedButton =>                   ElevatedButton
OutlineButton =>                   OutlinedButton
Scaffold.of(context).showSnackBar => ScaffoldMessenger.of(context).showSnackBar**
