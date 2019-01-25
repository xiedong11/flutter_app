class JsonEntity {
  String userName;
  String age;
  String sex;

  JsonEntity(this.userName, this.age, this.sex);

  JsonEntity.fromJson(Map<String, dynamic> json)
      : userName = json['userName'],
        age = json['age'],
        sex = json['sex'];

  Map<String, dynamic> toJson() => {
        'userName': userName,
        'age': age,
        'sex': sex,
      };

}

//直接上代码:
//
//List responseJson = json.decode(response);
//List<CardBean> cardbeanList = responseJson.map((m) => new CardBean.fromJson(m)).toList();
//CardBean cardBean = cardbeanList.first;

//其中response的格式如下:
//[
//{ “img”: “images/viio-2”,“price”: 12.0,“title”: “海边码头的爱情主题结婚照拍摄”,“ftitle”: “让大海见证你们的爱情，让幸福记录在码头上”,“num”: 0}
//,{ “img”: “images/viio-2”,“price”: 12.0,“title”: “海边码头的爱情主题结婚照拍摄”,“ftitle”: “让大海见证你们的爱情，让幸福记录在码头上”,“num”: 0}
//]
//
//注意:response是字符串,而不是JSON对象.


//
////1 .简单json字符串，序列化与反序列化
//var jsonStr = {
//  'userName': "xiaoming",
//  'age': '12',
//  'sex': '男',
//};
//
////json转实体
//JsonEntity jsonEntity = JsonEntity.fromJson(jsonStr);
//print('---------------${JsonEntity.fromJson(jsonStr).userName}');
//
////实体转Json
//JsonEntity entity = new JsonEntity("xie", '12', '男');
//Map jsons = entity.toJson();
//print('---------------${jsons}');
//
////1 .简单json数组，序列化与反序列化
//var jsonArray = [
//  {
//    'userName': "小红",
//    'age': '18',
//    'sex': '女',
//  },
//  {
//    'userName': "xiaoming",
//    'age': '12',
//    'sex': '男',
//  },
//  {
//    'userName': "xiaoming",
//    'age': '15',
//    'sex': '女',
//  }
//];
//
////Json数组转出List集合
//List<JsonEntity> jonsLists =
//jsonArray.map((map) => new JsonEntity.fromJson(map)).toList();
//JsonEntity entity1 = jonsLists.first;
//print('------------------${entity1.userName}');
//
////List集合转出Json数组
//List<JsonEntity> entitys = new List();
//for (int i = 0; i < 5; i++) {
//JsonEntity jsonEntity1 = new JsonEntity("xx", "12", "男");
//entitys.add(jsonEntity1);
//}
//print('------------------${entitys[1].toJson()}');

