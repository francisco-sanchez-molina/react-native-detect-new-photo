#import <React/RCTBridgeModule.h>
#import <React/RCTEventEmitter.h>

@import Photos;

@interface DetectNewPhoto : NSObject  <RCTBridgeModule> 
+ (void)init:(RCTPromiseResolveBlock)resolve rejecter:(RCTPromiseRejectBlock)reject;
@end
