package com.example.deeplink_poc

import android.content.Context
import android.content.Intent
import android.os.Bundle
import androidx.annotation.NonNull
import io.flutter.embedding.android.FlutterActivity
import io.flutter.embedding.engine.FlutterEngine
import io.flutter.plugin.common.EventChannel
import io.flutter.plugin.common.EventChannel.EventSink
import io.flutter.plugin.common.MethodChannel
import android.net.Uri

class MainActivity: FlutterActivity()
    //  {
    //     private val CHANNEL = "poc.deeplink.flutter.dev/channel"
    //     private var startString: String? = null

    //     override fun configureFlutterEngine(@NonNull flutterEngine: FlutterEngine) {
    //         super.configureFlutterEngine(flutterEngine)

    //         // GeneratedPluginRegistrant.registerWith(flutterEngine)

    //         MethodChannel(flutterEngine.dartExecutor, CHANNEL).setMethodCallHandler { call, result ->
    //             if (call.method == "initialLink") {
    //                 if (startString != null) {
    //                     result.success(startString)
    //                 }
    //             }
    //         }
    //     }
        
    //     override fun onCreate(savedInstanceState: Bundle?) {
    //         super.onCreate(savedInstanceState)

    //         val intent = getIntent()
    //         startString = intent.data?.toString()
    //     }
    // }
