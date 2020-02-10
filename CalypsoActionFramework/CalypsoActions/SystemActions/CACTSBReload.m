#include "CACTSBReload.h"
#include <spawn.h>

@implementation CACTSBReload

- (void)perform:(NSDictionary *)options
{
    pid_t pid;
    int status;

    const char *args[] = {"sbreload", NULL, NULL, NULL};
    posix_spawn(&pid, "usr/bin/sbreload", NULL, NULL, (char *const *)args, NULL);
    waitpid(pid, &status, WEXITED);
}


@end