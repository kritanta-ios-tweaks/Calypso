#include "CalypsoActionServer.h"

@implementation CalypsoActionServer : NSObject

+ (instancetype)sharedServer
{
    static CalypsoActionServer *sharedServer = nil;
    static dispatch_once_t onceToken = 0;
    dispatch_once(&onceToken, ^{
        sharedServer = [[[self class] alloc] init];
    });
    return sharedServer;
}

- (instancetype)init
{
    self = [super init];

    if (self) {
        self.actionNameMap = @{
            @"action.app.open":[CACTOpenApp new],
            @"action.interface.cc":[CACTToggleControlCenter new],
            @"action.interface.siri":[CACTToggleSiri new],
            @"action.media.back":[CACTMediaBack new],
            @"action.media.play":[CACTMediaPlay new],
            @"action.media.skip":[CACTMediaSkip new],
            @"action.physical.flashlight":[CACTToggleFlashlight new],
            @"action.system.respring":[CACTRespring new],
            @"action.system.safemode":[CACTSafeMode new],
            @"action.system.sbreload":[CACTSBReload new],
            @"action.system.uicache":[CACTUICache new],
            @"action.web.openurl":[CACTOpenURL new],
            @"action.wireless.airplane":[CACTAirplaneToggle new],
            @"action.wireless.bluetooth":[CACTBTToggle new],
            @"action.wireless.cellular":[CACTCellToggle new],
            @"action.wireless.wifi":[CACTWifiToggle new]
        }
    }

    return self;
}

- (void)performAction:(CALAction *)action withOptions:(NSDictionary *)options
{
    
}
- (void)performActionNamed:(NSString *)actionName withOptions:(NSDictionary *)options
{

}

+ (void)performAction:(CALAction *)action withOptions:(NSDictionary *)options
{
    [[CalypsoActionServer sharedServer] performAction:action withOptions:options];
}
+ (void)performActionNamed:(NSString *)actionName withOptions:(NSDictionary *)options
{
    [[CalypsoActionServer sharedServer] performActionNamed:actionName withOptions:options];
}

@end