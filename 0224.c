#include <stdio.h>

int
main(int argc, char *argv[])
{
    int n, i, ans;
    char s[1000+2], t[1000+2];
    scanf("%d\n", &n);
    fgets(s, sizeof(s), stdin);
    fgets(t, sizeof(t), stdin);

    ans = 0;
    for (i = 0; i < n; i++) {
        if (s[i] != t[i]) ans++;
    }
    printf("%d\n", ans);

    return 0;
}
