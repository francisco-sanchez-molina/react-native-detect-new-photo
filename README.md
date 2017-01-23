# React Native Detect New Photo 
A new camera roll photo detector


## Installation
```sh
npm install francisco-sanchez-molina/react-native-detect-new-photo --save
react-native link react-native-detect-new-photo
```

## Usage

```javascript
import ReactNativeDetectNewPhoto from 'react-native-detect-new-photo'

....
ReactNativeDetectNewPhoto.init()
ReactNativeDetectNewPhoto.registerCallback(_ => console.log('new photo detected!'))

```

0.1.0 support react-native 0.40
