#include "CACTRespring.h"
#include <spawn.h>

@implementation CACTRespring

- (void)perform:(NSDictionary *)options
{
    pid_t pid;
    int status;

    const char* args[] = {"killall", "-9", "backboardd", NULL};
    posix_spawn(&pid, "/usr/bin/killall", NULL, NULL, (char* const*)args, NULL);
    waitpid(pid, &status, WEXITED);
}

@end