#include <stdio.h>

int
main(int argc, char *argv[])
{
    int n;
    scanf("%d\n", &n);
    printf("%d\n", (0 == n%2) ? n : n-1);
    return 0;
}
