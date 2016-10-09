#import "RCTBridgeModule.h"
#import "RCTEventEmitter.h"

@import Photos;

@interface DetectNewPhoto : NSObject  <RCTBridgeModule> 
+ (void)init:(RCTPromiseResolveBlock)resolve rejecter:(RCTPromiseRejectBlock)reject;
@end
