#include "CACTMediaPlay.h"
#import "MediaRemote.h"

@implementation CACTMediaPlay

- (void)perform:(NSDictionary *)options
{
    MRMediaRemoteSendCommand(kMRTogglePlayPause, 0);
}

@end