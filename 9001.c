#include <stdio.h>

#define S_LENGTH_MAX 10

int
main(int argc, char *argv[])
{
    int a, b;
    char s[S_LENGTH_MAX+1];

    if (EOF == scanf("%d %d\n", &a, &b)) { return 1; }
    if (EOF == scanf("%10s\n", s)) { return 1; }
    printf("%d %s\n", a+b, s);

    return 0;
}
