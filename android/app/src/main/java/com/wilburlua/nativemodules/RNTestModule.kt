package com.wilburlua.nativemodules

import com.facebook.react.bridge.ReactApplicationContext
import com.facebook.react.bridge.ReactContextBaseJavaModule
import com.facebook.react.bridge.ReactMethod
import android.widget.Toast

class RNTestModule(reactContext: ReactApplicationContext) : ReactContextBaseJavaModule(reactContext) {

    override fun getName() = "RNTestModule"

    @ReactMethod
    private fun logMessage() {
        val text = "Toast from RNTestModule.kt";
        val duration = Toast.LENGTH_SHORT;
        Toast.makeText(getReactApplicationContext(), text, duration).show()
    }
}