import std.stdio;

void main() {
    ulong n; readf("%s", &n);

    ulong imax = n / 3;
    for (ulong i = 3; i <= imax; i++, imax = n/i) {
        if (0 != n % i) { continue; }

        writeln(i);
        return;
    }

    if (0 == n % 4) {
        writeln(4);
        return;
    }
    if (0 == n % 2) {
        writeln(n/2);
        return;
    }
    writeln(n);
}
