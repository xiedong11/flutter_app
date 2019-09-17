import 'dart:io';

import 'package:dio/dio.dart';

class DioUtils {
  static final String BASE_URL = "https://api.github.com"; //base url
  static DioUtils _instance;
  Dio _dio;
  BaseOptions _baseOptions;

  static DioUtils getInstance() {
    if (_instance == null) {
      _instance = new DioUtils();
    }
    return _instance;
  }

  /**
   * dio初始化配置
   */
  DioUtils() {
    //请求参数配置
    _baseOptions = new BaseOptions(
      baseUrl: BASE_URL,
      //请求服务地址
      connectTimeout: 5000,
      //响应时间
      receiveTimeout: 5000,
      headers: {
        //需要配置请求的header可在此处配置
      },
      //请求的Content-Type，默认值是[ContentType.json]. 也可以用ContentType.parse("application/x-www-form-urlencoded")
      contentType: ContentType.json,
      //表示期望以那种格式(方式)接受响应数据。接受三种类型 `json`, `stream`, `plain`, `bytes`. 默认值是 `json`,
      responseType: ResponseType.json,
    );

    //创建dio实例
    _dio = new Dio(_baseOptions);

    //可根据项目需要选择性的添加请求拦截器
    _dio.interceptors.add(
      InterceptorsWrapper(onRequest: (RequestOptions requestions) async {
        //此处可网络请求之前做相关配置，比如会所有请求添加token，或者userId
        requestions.queryParameters["token"] = "testtoken123443423";
        requestions.queryParameters["userId"] = "123456";
        return requestions;
      }, onResponse: (Response response) {
        //此处拦截工作在数据返回之后，可在此对dio请求的数据做二次封装或者转实体类等相关操作
        return response;
      }, onError: (DioError error) {
        //处理错误请求
        return error;
      }),
    );
  }

  /**
   * get请求
   */

  get(url, {data, options, cancleToken}) async {
    print('get request path ------${url}-------请求参数${data}');
    Response response;
    try {
      response = await _dio.get(url,
          queryParameters: data, options: options, cancelToken: cancleToken);
      print('get success ---${response.data}');
    } on DioError catch (e) {
      print('请求失败---错误类型${e.type}');
    }

    return response.data;
  }
}
