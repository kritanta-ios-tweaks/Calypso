#include "CACTOpenApp.h"

@implementation CACTOpenApp

- (void)perform:(NSDictionary *)options
{
    NSString *bundleID = options[@"bundle-id"];
    if (bundleID)
    {
        [[UIApplication sharedApplication] launchApplicationWithIdentifier:bundleID suspended:NO];
    }
}

- (BOOL)requiresOptions
{
    return YES;
}
- (BOOL)requiresUnlock
{
    return YES;
}

@end