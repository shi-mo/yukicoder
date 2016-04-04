#include <stdio.h>

#define DAY (24*60)

int
main(int argc, char *argv[])
{
    int n, i, total = 0;
    scanf("%d\n", &n);

    for (i = 0; i < n; i++) {
        int h1, m1, h2, m2, time;
        scanf("%d:%d %d:%d\n", &h1, &m1, &h2, &m2);
        time = (60*h2 + m2) - (60*h1 + m1);
        total += (0 <= time) ? time : (DAY+time);
    }
    printf("%d\n", total);

    return 0;
}
