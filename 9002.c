#include <stdio.h>

int
main(int argc, char *argv[])
{
    int n, i;

    if (EOF == scanf("%d\n", &n)) { return 1; }
    if (n < 1) { return 1; }

    for(i = 1; i <= n; i++) {
        int fb = 0;
        if (0 == i%3) { printf("Fizz"); fb++; }
        if (0 == i%5) { printf("Buzz"); fb++; }
        if (!fb) { printf("%d", i); }
        printf("\n");
    }

    return 0;
}
