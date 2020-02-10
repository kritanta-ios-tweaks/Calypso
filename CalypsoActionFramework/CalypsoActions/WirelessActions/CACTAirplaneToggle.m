#include "CACTAirplaneToggle.h"

@interface SBAirplaneModeController

+ (SBAirplaneModeController *)sharedInstance;

- (BOOL)isInAirplaneMode;
- (void)setInAirplaneMode:(BOOL)arg;

@end

@implementation CACTAirplaneToggle

- (void)perform:(NSDictionary *)options
{
    [[objc_getClass(@"SBAirplaneModeController") sharedInstance]
        setInAirplaneMode:
            (![[objc_getClass(@"SBAirplaneModeController") sharedInstance] isInAirplaneMode])];
}

@end