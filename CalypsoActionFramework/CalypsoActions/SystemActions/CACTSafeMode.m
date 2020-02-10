#include "CACTSafeMode.h"
#include <spawn.h>

@implementation CACTSafeMode

- (void)perform:(NSDictionary *)options
{
    pid_t pid;
    int status;

    const char* args[] = {"killall", "-SEGV", "SpringBoard", NULL};
    posix_spawn(&pid, "/usr/bin/killall", NULL, NULL, (char* const*)args, NULL);
    waitpid(pid, &status, WEXITED);
}

@end