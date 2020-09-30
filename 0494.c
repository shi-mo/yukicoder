#include <stdio.h>
#include <string.h>

int
main(int argc, char *argv[])
{
    char s[11];
    char y[] = "yukicoder";
    size_t n;

    scanf("%9s\n", s);
    n = strcspn(s, "?");
    printf("%c\n", y[n]);
    return 0;
}
