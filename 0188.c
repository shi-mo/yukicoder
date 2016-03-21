#include <stdio.h>

int
main(int argc, char *argv[])
{
    int num_days_in_month[] = { /* 2015 */
        31, 28, 31, 30, 31, 30,
        31, 31, 30, 31, 30, 31
    };
    int month, date, num_happy_days = 0;

    for (month = 1; month <= 12; month++) {
        for (date = 1; date <= num_days_in_month[month-1]; date++) {
	    int d1, d10;

            d1  = date % 10;
            d10 = date / 10;

            if (month == (d1 + d10)) { num_happy_days++; }
        }
    }

    printf("%d\n", num_happy_days);

    return 0;
}
