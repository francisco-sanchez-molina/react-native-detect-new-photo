#import "DetectNewPhoto.h"
#import "RCTBridge.h"
#import "RCTEventDispatcher.h"
#import "RCTLog.h"

#import <UIKit/UIKit.h>
#import "NewPhotoObserver.h"

@import Photos;


@implementation DetectNewPhoto

@synthesize bridge = _bridge;

NewPhotoObserver *newPhotoObserver = nil;

RCT_EXPORT_MODULE(DetectNewPhoto)

RCT_EXPORT_METHOD(init:(RCTPromiseResolveBlock)resolve
                  rejecter:(RCTPromiseRejectBlock)reject) {
    
    @try {
        if (newPhotoObserver == nil) {
            newPhotoObserver = [NewPhotoObserver new];
            [newPhotoObserver setBridge: self.bridge];
        }
        
        [PHPhotoLibrary requestAuthorization:^(PHAuthorizationStatus status) {
            if (status == PHAuthorizationStatusAuthorized) {
                [PHPhotoLibrary.sharedPhotoLibrary registerChangeObserver: newPhotoObserver];
            }
        }];
        resolve(@"Initialized!");
    }
    @catch (NSException *exception) {
        NSLog(@"%@", exception.reason);
        NSError *error = [NSError errorWithDomain:@"world" code:200 userInfo:@"error"];
        reject(@"fail", @"init", error);
    }
    
}


@end
