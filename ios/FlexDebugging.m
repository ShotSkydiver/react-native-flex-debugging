#import "FlexDebugging.h"
#import <FLEX/FLEXManager+Networking.h>

@implementation FlexDebugging

RCT_EXPORT_MODULE()

RCT_EXPORT_METHOD(showExplorer)
{
#if DEBUG
dispatch_async(dispatch_get_main_queue(), ^{
    [[FLEXManager sharedManager] showExplorer];
});
#endif
}

RCT_EXPORT_METHOD(hideExplorer)
{
#if DEBUG
dispatch_async(dispatch_get_main_queue(), ^{
    [[FLEXManager sharedManager] hideExplorer];
});
#endif
}

RCT_EXPORT_METHOD(toggleExplorer)
{
#if DEBUG
dispatch_async(dispatch_get_main_queue(), ^{
    [[FLEXManager sharedManager] toggleExplorer];
});
#endif
}

RCT_EXPORT_METHOD(setNetworkLogging)
{
#if DEBUG
dispatch_async(dispatch_get_main_queue(), ^{
    [[FLEXManager sharedManager] setNetworkDebuggingEnabled:true];
});
#endif
}

@end
