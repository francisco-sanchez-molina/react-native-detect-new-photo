import {
	Platform,
	DeviceEventEmitter,
	NativeModules } from 'react-native';


var DetectNewPhoto = {}
var callback

DeviceEventEmitter.addListener('com.devialab.detectNewPhoto', _ => callback && callback())

DetectNewPhoto.registerCallback = function (reqCallback) {
	callback = reqCallback;
}

DetectNewPhoto.init = function () {
 	return NativeModules.DetectNewPhoto.init();
}

module.exports = DetectNewPhoto
