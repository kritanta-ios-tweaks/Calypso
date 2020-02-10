#include "CACTOpenURL.h"

@implementation CACTOpenURL

- (void)perform:(NSDictionary *)options
{
    NSString *url = options[@"url"];
    if (url)
    {
        [[UIApplication sharedApplication] openURL:[NSURL URLWithString:url] options:@{} completionHandler:nil];
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