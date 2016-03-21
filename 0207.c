#include <stdio.h>
#include <stdlib.h>
#include <string.h>

#define BUF_LENGTH_MAX 10

int
is_nabeatu_number(long n)
{
    char buf[BUF_LENGTH_MAX+1];

    if (0 == (n % 3)) { return 1; }

    if (EOF == sprintf(buf, "%10ld", n)) { exit(EXIT_FAILURE); }
    if (NULL != strchr(buf, '3')) { return 1; }

    return 0;
}

int
main(int argc, char *argv[])
{
    long a, b;

    if (EOF == scanf("%ld %ld\n", &a, &b)) { return 1; }
    if ( ((b-a) < 0) || (100 <= (b-a)) ) { return 1; }

    for ( ; a <= b; a++) {
        if (is_nabeatu_number(a)) { printf("%ld\n", a); }
    }

    return 0;
}
