// #include <Foundation/Foundation.h>

@interface CALAction : NSObject

- (void)perform:(NSDictionary *)options;

- (BOOL)deviceMeetsRequirements;
- (BOOL)requiresOptions;
- (BOOL)isPossible;
- (BOOL)requiresUnlock;

@end