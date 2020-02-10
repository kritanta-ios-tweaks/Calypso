#include "CACTToggleFlashlight.h"
#include "AVFlashlight.h"

@implementation CACTToggleFlashlight

- (void)perform:(NSDictionary *)options
{
    AVFlashlight *flash = [[AVFlashlight alloc] init];
    if (flash.flashlightLevel != 0) // if on
    {
        [flash setFlashlightLevel:1 withError:nil];
    }
    else // if off
    {
        [flash setFlashlightLevel:0 withError:nil];
    }
}

@end