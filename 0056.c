#include <stdio.h>

int
main(int argc, char *argv[])
{
    long price;
    int p;

    if (EOF == scanf("%ld %d\n", &price, &p)) { return 1; }

    printf("%ld\n", (long)( ((double)price * (100 + p)) / 100 ));

    return 0;
}
