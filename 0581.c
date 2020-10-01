#include <stdio.h>
#include <limits.h>

int main() {
    unsigned long long a, b;
    scanf("%llu %llu\n", &a, &b);
    printf("%llu\n", a^b);
}
