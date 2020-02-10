@interface CalypsoActionServer : NSObject

@property (nonatomic, retain) NSDictionary *actionNameMap;

+ (instancetype)sharedServer;

- (void)performAction:(CALAction *)action withOptions:(NSDictionary *)options;
- (void)performActionNamed:(NSString *)actionName withOptions:(NSDictionary *)options;

+ (void)performAction:(CALAction *)action withOptions:(NSDictionary *)options;
+ (void)performActionNamed:(NSString *)actionName withOptions:(NSDictionary *)options;

@end