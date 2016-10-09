#import "DetectNewPhoto.h"
#import "RCTBridge.h"
#import "RCTEventDispatcher.h"
#import "RCTLog.h"

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

