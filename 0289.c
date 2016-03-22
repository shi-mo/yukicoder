#include <stdio.h>
#include <ctype.h>

#define INPUT_LENGTH_MAX 10000

int
main(int argc, char *argv[])
{
    char buf[INPUT_LENGTH_MAX+1];
    int length, i, sum;

    if (EOF == scanf("%s%n\n", buf, &length)) { return 1; }

    sum = 0;
    for(i = 0; i < length; i++) {
       char c = buf[i];
       if (isdigit(c)) { sum += (c - '0'); }
    }

    printf("%d\n", sum);

    return 0;
}
