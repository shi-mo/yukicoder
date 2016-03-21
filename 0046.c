#include <stdio.h>

int
main(int argc, char *argv[])
{
    long a, b, n;

    if (EOF == scanf("%ld %ld\n", &a, &b)) { return 1; }

    n = b/a;
    if (b%a) { n++; }

    printf("%ld\n", n);

    return 0;
}
