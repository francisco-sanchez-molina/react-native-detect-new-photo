#import <React/RCTBridgeModule.h>
#import <React/RCTEventEmitter.h>

@import Photos;

@interface NewPhotoObserver : NSObject  <PHPhotoLibraryChangeObserver>

- (void)setBridge:(RCTBridge *)bridge;
- (void)photoLibraryDidChange:(PHChange *)changeInstance;

@end
