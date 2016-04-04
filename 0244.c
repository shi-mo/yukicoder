#include <stdio.h>
#include <stdlib.h>

int
main(int argc, char *argv[])
{
    char buf[4];
    fgets(buf, sizeof(buf), stdin);
    printf("%d\n", atoi(buf)-1);
    return 0;
}
