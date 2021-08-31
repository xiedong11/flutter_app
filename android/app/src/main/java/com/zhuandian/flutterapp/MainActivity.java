package com.zhuandian.flutterapp;

import android.content.Intent;
import android.os.Bundle;
import android.text.TextUtils;
import android.widget.Toast;

import androidx.annotation.NonNull;

import java.util.HashMap;
import java.util.Map;


import io.flutter.plugin.common.EventChannel;
import io.flutter.plugin.common.MethodCall;
import io.flutter.plugin.common.MethodChannel;
import io.flutter.plugins.GeneratedPluginRegistrant;
import io.flutter.embedding.android.FlutterActivity;
import io.flutter.embedding.engine.FlutterEngine;

public class MainActivity extends FlutterActivity {
    private static final String METHOD_CHANNEL = "com.zhuandian.flutter/android";
    private static final String EVENT_CHANNEL = "com.zhuandian.flutter/android/event"; //事件通道，供原生主动调用flutter端使用
    private static final String METHOD_SHOW_TOAST = "showToast";
    private static final String METHOD_NUMBER_ADD = "numberAdd"; //简单加法计算，并返回两个数的和
    private static final String METHOD_NATIVE_SEND_MESSAGE_FLUTTER = "nativeSendMessage2Flutter"; //原生主动向flutter发送消息
    private EventChannel.EventSink eventChannel;
    private MethodChannel methodChannel;


    @Override
    public void configureFlutterEngine(@NonNull FlutterEngine flutterEngine) {
//        super.configureFlutterEngine(flutterEngine);
        GeneratedPluginRegistrant.registerWith(flutterEngine);

        methodChannel = new MethodChannel(flutterEngine.getDartExecutor().getBinaryMessenger(), METHOD_CHANNEL);
        //接受fltuter端传递过来的方法，并做出响应逻辑处理
        methodChannel.setMethodCallHandler(new MethodChannel.MethodCallHandler() {
            @Override
            public void onMethodCall(MethodCall call, MethodChannel.Result result) {
                System.out.println(call.method);
                if (call.method.equals(METHOD_SHOW_TOAST)) {
                    if (call.hasArgument("msg") && !TextUtils.isEmpty(call.argument("msg").toString())) {
                        Toast.makeText(MainActivity.this, call.argument("msg").toString(), Toast.LENGTH_SHORT).show();
                    } else {
                        Toast.makeText(MainActivity.this, "toast text must not null", Toast.LENGTH_SHORT).show();
                    }
                } else if (call.method.equals(METHOD_NUMBER_ADD)) {
                    int number1 = call.argument("number1");
                    int number2 = call.argument("number2");
                    result.success(number1 + number2); //返回两个数相加后的值
                } else if (call.method.equals(METHOD_NATIVE_SEND_MESSAGE_FLUTTER)) {
                    nativeSendMessage2Flutter();
                } else if (call.method.equals("new_page")) {
                    startActivity(new Intent(MainActivity.this, SecondActivity.class));
                }
            }
        });


        new EventChannel(flutterEngine.getDartExecutor().getBinaryMessenger(), EVENT_CHANNEL).setStreamHandler(new EventChannel.StreamHandler() {
            @Override
            public void onListen(Object o, EventChannel.EventSink eventSink) {
                eventChannel = eventSink;
                eventSink.success("事件通道准备就绪");
                //在此不建议做耗时操作，因为当onListen回调被触发后，在此注册当方法需要执行完毕才算结束回调函数
                //的执行，耗时操作可能会导致界面卡死，这里读者需注意！！
            }

            @Override
            public void onCancel(Object o) {

            }
        });




    }

    //TODO 新版本flutter在configureFlutterEngine完成初始化
//    @Override
//    protected void onCreate(Bundle savedInstanceState) {
//        super.onCreate(savedInstanceState);
////        setContentView(R.layout.activity_main);
//        GeneratedPluginRegistrant.registerWith(this);
//
//
//        methodChannel = new MethodChannel(getFlutterView(), METHOD_CHANNEL);
//        //接受fltuter端传递过来的方法，并做出响应逻辑处理
//        methodChannel.setMethodCallHandler(new MethodChannel.MethodCallHandler() {
//            @Override
//            public void onMethodCall(MethodCall call, MethodChannel.Result result) {
//                System.out.println(call.method);
//                if (call.method.equals(METHOD_SHOW_TOAST)) {
//                    if (call.hasArgument("msg") && !TextUtils.isEmpty(call.argument("msg").toString())) {
//                        Toast.makeText(MainActivity.this, call.argument("msg").toString(), Toast.LENGTH_SHORT).show();
//                    } else {
//                        Toast.makeText(MainActivity.this, "toast text must not null", Toast.LENGTH_SHORT).show();
//                    }
//                } else if (call.method.equals(METHOD_NUMBER_ADD)) {
//                    int number1 = call.argument("number1");
//                    int number2 = call.argument("number2");
//                    result.success(number1 + number2); //返回两个数相加后的值
//                } else if (call.method.equals(METHOD_NATIVE_SEND_MESSAGE_FLUTTER)) {
//                    nativeSendMessage2Flutter();
//                } else if (call.method.equals("new_page")) {
//                    startActivity(new Intent(MainActivity.this, SecondActivity.class));
//                }
//            }
//        });
//
//
//        new EventChannel(getFlutterView(), EVENT_CHANNEL).setStreamHandler(new EventChannel.StreamHandler() {
//            @Override
//            public void onListen(Object o, EventChannel.EventSink eventSink) {
//                eventChannel = eventSink;
//                eventSink.success("事件通道准备就绪");
//                //在此不建议做耗时操作，因为当onListen回调被触发后，在此注册当方法需要执行完毕才算结束回调函数
//                //的执行，耗时操作可能会导致界面卡死，这里读者需注意！！
//            }
//
//            @Override
//            public void onCancel(Object o) {
//
//            }
//        });
//
//
//    }


    /**
     * 原生端向flutter主动发送消息；
     */
    private void nativeSendMessage2Flutter() {
        //主动向flutter发送一次更新后的数据
        eventChannel.success("原生端向flutter主动发送消息");
    }


    @Override
    protected void onResume() {
        super.onResume();
        /**
         * 这里通过methodChannel从原生android获取flutter端传递过来的值，其实跟flutter端通过invokeMethod方法回调原生android定义好的方法原理类似
         * ，但是因为flutter是作为寄主呈现在原生android上，换句话说，在flutter的UI被渲染完成之后，定义在原生安卓的相关方法定义也必定已经加载完成
         * 再换句话说，flutter在调用原生的监听方法时，宿主上的相关方法肯定已经完成注册监听，可被唤起。
         *
         *  但是，原生android端作为宿主要监听flutter端提前定义好的方法，由于二者的生命周期寄托关系，在原生android端完成事件唤起的时候，flutter的相关
         *  方法定义未必被实现，换句话说，在原生android中通过invokeMethod唤起flutter的回调方法时，可能会存在方法为注册，导致为实现的情况出现
         *
         *  为了避免该情况的发生，建议在onResume中注册原生android的invokMethod方法，在原生android中页面切换时，可重复注册监听方法，确保在某一个时机
         *  能唤起flutter的方法
         *
         * 在此笔者认为在原生端唤起flutter的回调方法意义不大，如果一定需要从flutter获取数据，//TODO
         */

        Map<String,Object> params = new HashMap<>();
        params.put("params","test params");
        methodChannel.invokeMethod("getFlutterResult", params, new MethodChannel.Result() {
            @Override
            public void success(Object o) {
                System.out.println(o.toString()+"-------------flutter 传递过来的值");
            }

            @Override
            public void error(String errorCode, String errorMsg, Object o) {
                System.out.println("------------error with--"+errorMsg);
            }

            @Override
            public void notImplemented() {
                System.out.println("-------------notImplemented-");
            }
        });
    }
}



