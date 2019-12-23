package com.zhuandian.flutterapp.plugin;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.os.BatteryManager;

import java.util.Random;

import io.flutter.plugin.common.EventChannel;
import io.flutter.plugin.common.MethodCall;
import io.flutter.plugin.common.MethodChannel;

public class FlutterPluginBatteryLevel implements MethodChannel.MethodCallHandler, EventChannel.StreamHandler {

    /**
     * MethodCallHandler
     */
    @Override
    public void onMethodCall(MethodCall call, MethodChannel.Result result) {
        if (call.method.equals("getBatteryLevel")) {
            Random random = new Random();
            result.success(random.nextInt(100));
        } else {
            result.notImplemented();
        }
    }

    /**
     * EventChannel.StreamHandler
     */
    @Override
    public void onListen(Object obj, EventChannel.EventSink eventSink) {
        BroadcastReceiver chargingStateChangeReceiver = createChargingStateChangeReceiver(eventSink);
    }

    @Override
    public void onCancel(Object obj) {
    }

    private BroadcastReceiver createChargingStateChangeReceiver(final EventChannel.EventSink events) {
        return new BroadcastReceiver() {
            @Override
            public void onReceive(Context context, Intent intent) {
                int status = intent.getIntExtra(BatteryManager.EXTRA_STATUS, -1);

                if (status == BatteryManager.BATTERY_STATUS_UNKNOWN) {
                    events.error("UNAVAILABLE", "Charging status unavailable", null);
                } else {
                    boolean isCharging = status == BatteryManager.BATTERY_STATUS_CHARGING ||
                            status == BatteryManager.BATTERY_STATUS_FULL;
                    events.success(isCharging ? "charging" : "discharging");
                }
            }
        };
    }
}