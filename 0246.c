#include <stdio.h>

int
main(int argc, char *argv[])
{
    int a, b;

    if (EOF == scanf("%d %d\n", &a, &b)) { return 1; }
    if ((a < 0) || (2 < a)) { return 1; }
    if ((b < 0) || (2 < b)) { return 1; }

    switch ((3+b-a)%3) {
        case 0:
            printf("Drew\n");
            break;
        case 1:
            printf("Won\n");
            break;
        default:
            printf("Lost\n");
            break;
    }

    return 0;
}
