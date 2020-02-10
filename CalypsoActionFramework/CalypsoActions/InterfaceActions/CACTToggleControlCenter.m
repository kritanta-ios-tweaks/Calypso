#include "CACTToggleControlCenter.h"

@interface SBControlCenterController

+ (id)sharedInstance;
+ (void)presentAnimated:(BOOL)arg1;
- (BOOL)isVisible;
- (void)dismissAnimated:(BOOL)arg1;

@end


@implementation CACTToggleControlCenter

- (void)perform:(NSDictionary *)options
{
    if ([[objc_getClass("SBControlCenterController") sharedInstance] isVisible]) 
    {
        [[objc_getClass("SBControlCenterController") sharedInstance] dismissAnimated:YES];
    }
    else 
    {
        [[objc_getClass("SBControlCenterController") sharedInstance] presentAnimated:YES];
    }
}

@end