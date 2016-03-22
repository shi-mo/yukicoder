#include <stdio.h>
#include <ctype.h>

#define INPUT_LENGTH_MAX 100

int
main(int argc, char *argv[])
{
    char buf[INPUT_LENGTH_MAX+1];
    int length, i;

    if (EOF == scanf("%s%n\n", buf, &length)) { return 1; }

    for(i = 0; i < length; i++) {
       static char shift = 'A' - 'a';
       char c = buf[i];
       if (isupper(c)) { buf[i] = c - shift; }
       if (islower(c)) { buf[i] = c + shift; }
    }

    printf("%s\n", buf);

    return 0;
}
