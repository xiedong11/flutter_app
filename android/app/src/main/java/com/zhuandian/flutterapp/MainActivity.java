package com.zhuandian.flutterapp;

import android.content.Intent;
import android.os.Bundle;
import android.text.TextUtils;
import android.widget.Toast;

import io.flutter.app.FlutterActivity;
import io.flutter.plugin.common.MethodCall;
import io.flutter.plugin.common.MethodChannel;
import io.flutter.plugins.GeneratedPluginRegistrant;

public class MainActivity extends FlutterActivity {
    private static final String CHANNEL = "com.zhuandian.flutter/android";
    private static final String CHANNEL_TYPE_SHOW_TOAST = "showToast";
    private static final String CHANNEL_TYPE_NUMBER_ADD = "numberAdd"; //简单加法计算，并返回两个数的和

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
//        setContentView(R.layout.activity_main);
        GeneratedPluginRegistrant.registerWith(this);

        //接受fltuter端传递过来的方法，并做出响应逻辑处理
        new MethodChannel(getFlutterView(), CHANNEL).setMethodCallHandler(new MethodChannel.MethodCallHandler() {
            @Override
            public void onMethodCall(MethodCall call, MethodChannel.Result result) {
                System.out.println(call.method);
                if (call.method.equals(CHANNEL_TYPE_SHOW_TOAST)) {
                    if (call.hasArgument("msg") && !TextUtils.isEmpty(call.argument("msg").toString())) {
                        Toast.makeText(MainActivity.this, call.argument("msg").toString(), Toast.LENGTH_SHORT).show();
                    } else {
                        Toast.makeText(MainActivity.this, "toast text must not null", Toast.LENGTH_SHORT).show();
                    }
                } else if (call.method.equals(CHANNEL_TYPE_NUMBER_ADD)) {
                    int number1 = call.argument("number1");
                    int number2 = call.argument("number2");
                    result.success(number1 + number2); //返回两个数相加后的值
                } else if (call.method.equals("new_page")) {
                    startActivity(new Intent(MainActivity.this, SecondActivity.class));
                }
            }
        });
    }
}
