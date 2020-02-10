#include "CACTUICache.h"
#include <spawn.h>

@implementation CACTUICache

- (void)perform:(NSDictionary *)options
{
    pid_t pid;
    int status;

    const char* args[] = {"uicache", "-a", "-r", NULL};
    posix_spawn(&pid, "/usr/bin/uicache", NULL, NULL, (char* const*)args, NULL);
    waitpid(pid, &status, WEXITED);
    CFRunLoopRunInMode(kCFRunLoopDefaultMode, 20.0, false);
}

@end