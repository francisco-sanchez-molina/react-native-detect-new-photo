package com.devialab.detectNewPhoto;


import android.content.Intent;
import android.database.ContentObserver;
import android.provider.MediaStore;
import android.util.Log;

import com.facebook.react.bridge.*;

import com.facebook.react.bridge.Arguments;
import com.facebook.react.modules.core.DeviceEventManagerModule;


public class DetectNewPhoto extends ReactContextBaseJavaModule {
    
    private PhotosObserver instUploadObserver = new PhotosObserver();

    public DetectNewPhoto(ReactApplicationContext reactContext) {
        super(reactContext);
    }

    @Override
    public String getName() {
        return "DetectNewPhoto";
    }

    @ReactMethod
    public void init(Promise promise) {
        Log.d("DetectNewPhoto", "register");
        try {
            this.getReactApplicationContext().getApplicationContext()
                    .getContentResolver()
                    .registerContentObserver(
                            MediaStore.Images.Media.EXTERNAL_CONTENT_URI, false,
                            instUploadObserver);
            promise.resolve("Initialized!");
        } catch (Exception e) {
            promise.reject(e);
        }

    }


    private class PhotosObserver extends ContentObserver {
 
        public PhotosObserver() {
            super(null);
        }
    
        @Override
        public void onChange(boolean selfChange) {
            super.onChange(selfChange);
            getReactApplicationContext()
                .getJSModule(DeviceEventManagerModule.RCTDeviceEventEmitter.class)
                .emit("com.devialab.detectNewPhoto", Arguments.createMap());
            Log.d("DetectNewPhoto", "detected picture");
        }
    }

}
