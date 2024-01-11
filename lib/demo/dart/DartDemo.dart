import 'package:flutter/material.dart';

void main() {
  execute(() => print("hsdaffsfsdsfdad--------------"));

  enableFlags(isShow: false);
  enableFlags(name: "xiaoming");

  //Future函数
  Future.delayed(Duration(seconds: 3), () {
    return "data";
  }).then((data) {
    //执行成功会走到这里
    print(data);
  }).catchError((e) {
    //执行失败会走到这里
    print(e);
  }).whenComplete(() {
    //无论成功或失败都会走到这里
  });

  //模拟串行多接口请求

  /**
   * 有些时候，我们需要等待多个异步任务都执行结束后才进行一些操作，
   * 比如我们有一个界面，需要先分别从两个网络接口获取数据，获取成功后，
   * 我们需要将两个接口数据进行特定的处理后再显示到UI界面上，应该怎么做？
   * 答案是Future.wait，它接受一个Future数组参数，只有数组中所有Future都执行成功后，
   * 才会触发then的成功回调，只要有一个Future执行失败，就会触发错误回调。
   * 下面，我们通过模拟Future.delayed 来模拟两个数据获取的异步任务，等两个异步任务都执行成功时，
   * 将两个异步任务的结果拼接打印出来，代码如下
   */
  Future.wait([
    // 2秒后返回结果
    Future.delayed(Duration(seconds: 2), () {
      return "message1";
    }),
    // 4秒后返回结果
    Future.delayed(Duration(seconds: 4), () {
      return "message2";
    })
  ]).then((result) {
    print(result[0] + result[1]);
  }).catchError((e) {
    print(e);
  });


  //并行多接口请求模拟，不需求所有请求同时成功之后才发生回调，各个请求直接彼此不影响各自的

  /**
   * Stream 也是用于接收异步事件数据，和Future 不同的是，它可以接收多个异步操作的结果（成功或失败）。
   * 也就是说，在执行异步任务时，可以通过多次触发成功或失败事件来传递结果数据或错误异常。
   * Stream 常用于会多次读取数据的异步任务场景，如网络内容下载、文件读写等
   */

  Stream.fromFutures([
    // 1秒后返回结果
    Future.delayed(new Duration(seconds: 1), () {
      return "hello 1";
    }),
    // 抛出一个异常
    Future.delayed(new Duration(seconds: 2),(){
      throw AssertionError("Error");
    }),
    // 3秒后返回结果
    Future.delayed(new Duration(seconds: 3), () {
      return "hello 3";
    })
  ]).listen((data){
    print(data);
  }, onError: (e){
    print(e.message);
  },onDone: (){

  });
}

/**
 * 函数作为参数传递
 */
void execute(callback) {
  callback();
}

/**
 * 可选的命名参数
 */
void enableFlags({ bool? isShow, String? name}) {
  //定义函数时，使用{param1, param2, …}，用于指定命名参数。
}
