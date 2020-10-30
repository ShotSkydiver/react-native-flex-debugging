#import "FlexDebugging.h"
#import <FLEX/FLEXManager+Networking.h>

@implementation FlexDebugging

RCT_EXPORT_MODULE()

RCT_EXPORT_METHOD(showExplorer)
{
dispatch_async(dispatch_get_main_queue(), ^{
    [[FLEXManager sharedManager] showExplorer];
});
}

RCT_EXPORT_METHOD(hideExplorer)
{
dispatch_async(dispatch_get_main_queue(), ^{
    [[FLEXManager sharedManager] hideExplorer];
});
}

RCT_EXPORT_METHOD(toggleExplorer)
{
dispatch_async(dispatch_get_main_queue(), ^{
    [[FLEXManager sharedManager] toggleExplorer];
});
}

RCT_EXPORT_METHOD(setNetworkLogging)
{
dispatch_async(dispatch_get_main_queue(), ^{
    [[FLEXManager sharedManager] setNetworkDebuggingEnabled:true];
});
}

@end
