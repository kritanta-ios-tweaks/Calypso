@protocol CALListener <NSObject>
- (void)activator:(LAActivator *)activator receiveEvent:(LAEvent *)event;
@end