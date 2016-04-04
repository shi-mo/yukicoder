#include <stdio.h>

int
main(int argc, char *argv[])
{
    int n, x, ans = 0, non_paired = 0;
    int c[] = { 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 };
    scanf("%d\n", &n);

    for (x = 0; x < n; x++) {
        int y, a[3];
        scanf("%d %d %d\n", &a[0], &a[1], &a[2]);
        for (y = 0; y < 3; y++) {
            int i = a[y];
            if (0 == c[i]) {
                c[i]++;
                non_paired++;
                continue;
            }
            ans++;
            non_paired--;
            c[i] = 0;
        }
    }
    ans += non_paired/4;
    printf("%d\n", ans);

    return 0;
}
