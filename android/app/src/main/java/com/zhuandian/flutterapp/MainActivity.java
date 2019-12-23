package com.zhuandian.flutterapp;

import android.content.Intent;
import android.os.Bundle;
import android.text.TextUtils;
import android.widget.Toast;

import io.flutter.app.FlutterActivity;
import io.flutter.plugin.common.EventChannel;
import io.flutter.plugin.common.MethodCall;
import io.flutter.plugin.common.MethodChannel;
import io.flutter.plugins.GeneratedPluginRegistrant;

public class MainActivity extends FlutterActivity {
    private static final String METHOD_CHANNEL = "com.zhuandian.flutter/android";
    private static final String EVENT_CHANNEL = "com.zhuandian.flutter/android/event"; //事件通道，供原生主动调用flutter端使用
    private static final String METHOD_SHOW_TOAST = "showToast";
    private static final String METHOD_NUMBER_ADD = "numberAdd"; //简单加法计算，并返回两个数的和
    private static final String METHOD_NATIVE_SEND_MESSAGE_FLUTTER = "nativeSendMessage2Flutter"; //原生主动向flutter发送消息
    private EventChannel.EventSink eventChannel;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
//        setContentView(R.layout.activity_main);
        GeneratedPluginRegistrant.registerWith(this);

        //接受fltuter端传递过来的方法，并做出响应逻辑处理
        new MethodChannel(getFlutterView(), METHOD_CHANNEL).setMethodCallHandler(new MethodChannel.MethodCallHandler() {
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


        new EventChannel(getFlutterView(), EVENT_CHANNEL).setStreamHandler(new EventChannel.StreamHandler() {
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


    /**
     * 原生端向flutter主动发送消息；
     */
    private void nativeSendMessage2Flutter() {
        //主动向flutter发送一次更新后的数据
        eventChannel.success("原生端向flutter主动发送消息");
    }


}



