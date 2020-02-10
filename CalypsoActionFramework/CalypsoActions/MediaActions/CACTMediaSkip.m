#include "CACTMediaSkip.h"
#import "MediaRemote.h"

@implementation CACTMediaSkip

- (void)perform:(NSDictionary *)options
{
    MRMediaRemoteSendCommand(kMRNextTrack, 0);
}

@end