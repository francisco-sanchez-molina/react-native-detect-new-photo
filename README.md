# React Native Detect New Photo 
A new camera roll photo detector (only android supported)


## Installation
```sh
npm install francisco-sanchez-molina/react-native-detect-new-photo --save
rnpm link react-native-detect-new-photo
```

## Usage

```javascript
import ReactNativeDetectNewPhoto from 'react-native-detect-new-photo'

....
ReactNativeDetectNewPhoto.init()
ReactNativeDetectNewPhoto.registerCallback(_ => console.log('new photo detected!'))

```

