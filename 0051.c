#include <stdio.h>

int
main(int argc, char *argv[])
{
    long w, d, i;
    scanf("%ld\n%ld\n", &w, &d);
    for (i = d; 2 <= i; i--) w -= w/i/i;
    printf("%ld\n", w);

    return 0;
}
