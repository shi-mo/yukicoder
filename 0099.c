#include <stdio.h>
#include <stdlib.h>

int
main(int argc, char *argv[])
{
    int n, i, ans = 0;
    char buf[(100000*11)+3];
    char *p;

    scanf("%d\n", &n);
    fgets(buf, sizeof(buf), stdin);

    for (i = 0, p = buf; i < n; i++) {
        char c, tail;
        for (c = *p; ' ' != c && '\n' != c; c = *(++p)) { tail = c; } // get a tail char of a number
        ++p;
        ans += ((tail - '0') % 2) ? 1 : -1;
    }
    printf("%d\n", abs(ans));

    return 0;
}
