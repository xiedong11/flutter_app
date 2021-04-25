import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter/widgets.dart';

class DioUtils {
  static final String BASE_URL = "https://www.wanandroid.com"; //base url
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
      connectTimeout: 5000,
      receiveTimeout: 5000,
      headers: {
        //预设好的header信息
        "testHeader":"bb"
      },
      contentType: ContentType.json.toString(),
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
        print('-----请求参数--'+requestions.queryParameters.toString());
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

  get(url, {data, options}) async {
    print('get request path ------${url}-------请求参数${data}');
    print('------------');
    Response response;
    try {
      response = await _dio.get(url, queryParameters: data, options: options);
      debugPrint('get result ---${response.data}');
    } on DioError catch (e) {
      print('请求失败---错误类型${e.type}--错误信息${e.message}');
    }

    return response.data.toString();
  }

  /**
   * Post请求
   */
  post(url, {data, options}) async {
    print('post request path ------${url}-------请求参数${data}');
    Response response;
    try {
      response = await _dio.post(url, queryParameters: data, options: options);
      print('post result ---${response.data}');
    }on DioError catch(e){
      print('请求失败---错误类型${e.type}--错误信息${e.message}');
    }

    return response.data.toString();
  }
}
