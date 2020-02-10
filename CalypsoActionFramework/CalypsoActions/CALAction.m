#include "CALAction.h"

@implementation CALAction

- (void)perform:(NSDictionary *)options
{
    // Method stub for subclasses
}

- (BOOL)deviceMeetsRequirements
{
    return YES;
}
- (BOOL)requiresOptions
{
    return NO;
}
- (BOOL)isPossible
{
    return YES;
}
- (BOOL)requiresUnlock
{
    return NO;
}

@end