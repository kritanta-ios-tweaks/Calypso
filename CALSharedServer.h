//
//  CALSharedServer.h
//  Calypso
//
//  Shared Server for events and actions. 
//

#include "CALAction.h"

@interface CALSharedServer

+ (instancetype)sharedServer;

- (void)sendEventToServer:(NSString *)event;
- (void)performAction:(CALAction *)action withOptions:(NSDictionary *)options;
- (void)performActionNamed:(NSString *)actionName withOptions:(NSDictionary *)options;
- (BOOL)registerListener:(id)listener forEventNamed:(NSString *)name;

+ (void)sendEventToServer:(NSString *)event;
+ (void)performAction:(CALAction *)action withOptions:(NSDictionary *)options;
+ (void)performActionNamed:(NSString *)actionName withOptions:(NSDictionary *)options;
+ (BOOL)registerListener:(id)listener forEventNamed:(NSString *)name;

@end