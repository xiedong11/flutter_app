package com.example.flutter_calc_plugin

import androidx.annotation.NonNull

import io.flutter.embedding.engine.plugins.FlutterPlugin
import io.flutter.plugin.common.MethodCall
import io.flutter.plugin.common.MethodChannel
import io.flutter.plugin.common.MethodChannel.MethodCallHandler
import io.flutter.plugin.common.MethodChannel.Result

class FlutterCalcPlugin :  FlutterPlugin, MethodCallHandler {
    private lateinit var channel : MethodChannel
//    companion object {
//        @JvmStatic
//        fun registerWith(registrar: Registrar) {
//            val channel = MethodChannel(registrar.messenger(), "flutter_calc_plugin")
//            channel.setMethodCallHandler(FlutterCalcPlugin())
//        }
//    }

    override fun onAttachedToEngine(@NonNull flutterPluginBinding: FlutterPlugin.FlutterPluginBinding) {
        channel = MethodChannel(flutterPluginBinding.binaryMessenger, "flutter_calc_plugin")
        channel.setMethodCallHandler(this)
    }

    override fun onMethodCall(call: MethodCall, result: Result) {
        if (call.method == "getPlatformVersion") {
            result.success("Android ${android.os.Build.VERSION.RELEASE}")
        } else if (call.method == "getResult") {
            var a = call.argument<Int>("a")
            var b = call.argument<Int>("b")
            result.success((a!! + b!!).toString())
        } else {
            result.notImplemented()
        }
    }

    override fun onDetachedFromEngine(@NonNull binding: FlutterPlugin.FlutterPluginBinding) {
        channel.setMethodCallHandler(null)
    }
}
