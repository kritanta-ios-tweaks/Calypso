#include "CACTToggleSiri.h"


@interface SBAssistantController : NSObject

+(id)sharedInstance;
-(BOOL)handleSiriButtonDownEventFromSource:(int)arg1 activationEvent:(int)arg2;
-(void)handleSiriButtonUpEventFromSource:(int)arg1;

@end


@implementation CACTToggleSiri

- (void)perform:(NSDictionary *)options
{
    SBAssistantController *ac = [objc_getClass("SBAssistantController")sharedInstance];
    [ac handleSiriButtonDownEventFromSource:1 activationEvent:1];
    [ac handleSiriButtonUpEventFromSource:1];
}

@end