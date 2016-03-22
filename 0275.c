#include <stdio.h>
#include <stdlib.h>

#define NUM_ELEMENTS_MAX 1000

int
compare_int(const void *a, const void *b)
{
    return *((int*)a) - *((int*)b);
}

int
main(int argc, char *argv[])
{
    int n, i, a[NUM_ELEMENTS_MAX];
    double median;

    if (EOF == scanf("%d\n", &n)) { exit(EXIT_FAILURE); }
    if ( (n < 1) || (NUM_ELEMENTS_MAX < n) ) { exit(EXIT_FAILURE); }

    for (i = 0; i < n; i++) {
        if (EOF == scanf("%d[ \n]", &(a[i]))) { exit(EXIT_FAILURE); }
    }

    qsort(a, n, sizeof(a[0]), compare_int);

    if (n % 2) {
        printf("%d\n", a[n/2]);
        return 0;
    }

    median = ((double)(a[(n/2)-1] + a[n/2])) / 2.0;
    if (median - (int)median) {
        printf("%.1f\n", median);
    } else {
        printf("%d\n", (int)median);
    }

    return 0;
}
