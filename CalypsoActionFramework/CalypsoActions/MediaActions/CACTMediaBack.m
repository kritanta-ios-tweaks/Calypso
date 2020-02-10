#include "CACTMediaBack.h"
#import "MediaRemote.h"

@implementation CACTMediaBack

- (void)perform:(NSDictionary *)options
{
    MRMediaRemoteSendCommand(kMRPreviousTrack, 0);
}


@end