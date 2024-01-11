class PhoneCountryCodeEntity {
  int? code;
  late List<PhoneCountryCodeData> data;
  String? message;

  PhoneCountryCodeEntity({this.code, this.data=const[], this.message});

  PhoneCountryCodeEntity.fromJson(Map<String, dynamic> json) {
    code = json['code'];
    if (json['data'] != null) {
      //dart3之后List()不再是有效的代码，List没有构造函数了，不能再用new List()来定义空数组了
      // data = new List<PhoneCountryCodeData>();
      data = <PhoneCountryCodeData>[];
      (json['data'] as List).forEach((v) {
        data.add(new PhoneCountryCodeData.fromJson(v));
      });
    }
    message = json['message'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['code'] = this.code;
    if (this.data != null) {
      data['data'] = this.data.map((v) => v.toJson()).toList();
    }
    data['message'] = this.message;
    return data;
  }
}

class PhoneCountryCodeData {
  List<PhoneCountryCodeDataListdata> listData =[];
  String? name;

  PhoneCountryCodeData({this.listData=const[], this.name});

  PhoneCountryCodeData.fromJson(Map<String, dynamic> json) {
    if (json['listData'] != null) {
      listData = <PhoneCountryCodeDataListdata>[];
      (json['listData'] as List).forEach((v) {
        listData!.add(new PhoneCountryCodeDataListdata.fromJson(v));
      });
    }
    name = json['name'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.listData != null) {
      data['listData'] = this.listData!.map((v) => v.toJson()).toList();
    }
    data['name'] = this.name;
    return data;
  }
}

class PhoneCountryCodeDataListdata {
  String? code;
  String? name;
  int? id;
  String? groupCode;

  PhoneCountryCodeDataListdata({this.code, this.name, this.id, this.groupCode});

  PhoneCountryCodeDataListdata.fromJson(Map<String, dynamic> json) {
    code = json['code'];
    name = json['name'];
    id = json['id'];
    groupCode = json['groupCode'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['code'] = this.code;
    data['name'] = this.name;
    data['id'] = this.id;
    data['groupCode'] = this.groupCode;
    return data;
  }
}
