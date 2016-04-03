#include <stdio.h>

int
main(int argc, char *argv[])
{
    int n, i, j, a, cmax;
    int c[] = { 0, 0, 0, 0, 0, 0 };
    char buf[(100000*2)+2];
    char *p;

    scanf("%d\n", &n);
    fgets(buf, sizeof(buf), stdin);

    for (i = 0, p = buf; i < n; i++) {
        c[*p-'1']++;
        p += 2;
    }
    a = 0; cmax = 0;
    for (j = 5; 0 <= j; j--) {
        if (c[j] <= cmax) continue;
        a = j;
        cmax = c[j];
    }
    printf("%d\n", a+1);

    return 0;
}
