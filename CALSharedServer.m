#include "CALSharedServer.h"

@implementation CALSharedServer


+ (instancetype)sharedServer
{
    static CALSharedServer *sharedServer = nil;
    static dispatch_once_t onceToken = 0;
    dispatch_once(&onceToken, ^{
        sharedServer = [[[self class] alloc] init];
    });
    return sharedServer;
}

- (void)sendEventToServer:(NSString *)event
{

}
- (void)performAction:(CALAction *)action withOptions:(NSDictionary *)options
{

}
- (void)performActionNamed:(NSString *)actionName withOptions:(NSDictionary *)options
{

}
- (BOOL)registerListener:(id)listener forEventNamed:(NSString *)name
{

}

+ (void)sendEventToServer:(NSString *)event
{
    [[CALSharedServer sharedServer] sendEventToServer:event];
}
+ (void)performAction:(CALAction *)action withOptions:(NSDictionary *)options
{
    [[CALSharedServer sharedServer] performAction:action withOptions:options];
}
+ (void)performActionNamed:(NSString *)actionName withOptions:(NSDictionary *)options
{
    [[CALSharedServer sharedServer] performActionNamed:actionName withOptions:options];
}
+ (BOOL)registerListener:(id)listener forEventNamed:(NSString *)name
{
    [[CALSharedServer sharedServer] registerListener:listener forEventNamed:name];
}

@end