#import "DetectNewPhoto.h"
#import <React/RCTBridge.h>
#import <React/RCTEventDispatcher.h>
#import <React/RCTLog.h>

#import <UIKit/UIKit.h>
#import "NewPhotoObserver.h"
@import Photos;

@implementation NewPhotoObserver
RCTBridge *_bridge;

- (void)setBridge:(RCTBridge *)bridge
{
    _bridge = bridge;
}
- (void)photoLibraryDidChange:(PHChange *)changeInstance
{
    [_bridge.eventDispatcher sendAppEventWithName:@"com.devialab.detectNewPhoto" body:nil];
}


@end

